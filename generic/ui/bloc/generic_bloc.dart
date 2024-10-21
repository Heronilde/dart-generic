import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../domain/service.dart';

part 'generic_event.dart';
part 'generic_state.dart';

class GenericBloc<T> extends Bloc<GenericEvent, GenericState<T>> {
  final GenericService<T> service;
  GenericBloc({required this.service}) : super(GenericInitial<T>()) {
    on<GenericCreateItemEvent<T>>((event, emit) async {
      emit(GenericCreatingState<T>());
      final result = await service.createItem(item: event.item);
      result?.fold(
        (failure) {
          emit(GenericErrorState<T>(failure: failure));
        },
        (response) {
          emit(GenericCreateSuccess<T>());
          // Optionally emit initial state or any other state as needed
          // emit(GenericInitial<T>());
        },
      );
    });

    on<GenericGetItemEvent<T>>((event, emit) async {
      emit(GenericLoading());

      final result = await service.getItem(itemId: event.id);

      result.fold((failure) {
        emit(GenericErrorState<T>(failure: failure));
      }, (r) {
        // if (r != null) {
        emit(GenericLoadSuccess<T>(item: r));
        // } else {
        // emit(const UserNull());
        //  }
      });
    });
  }
}
