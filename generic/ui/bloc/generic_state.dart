part of 'generic_bloc.dart';

sealed class GenericState<T> extends Equatable {
  const GenericState();

  @override
  List<Object> get props => [];
}

// Estado inicial genérico
final class GenericInitial<T> extends GenericState<T> {}

// Estado de carregamento genérico
final class GenericLoading<T> extends GenericState<T> {}

// Estado de sucesso ao criar um item genérico
final class GenericCreateSuccess<T> extends GenericState<T> {}

// Estado de criação em andamento
final class GenericCreatingState<T> extends GenericState<T> {}

// Estado de atualização em andamento
final class GenericUpdatingState<T> extends GenericState<T> {}

// Estado de sucesso na atualização de um item genérico
final class GenericUpdateSuccess<T> extends GenericState<T> {}

// Estado de sucesso ao carregar um item genérico
final class GenericLoadSuccess<T> extends GenericState<T> {
  final T item; // Agora genérico
  const GenericLoadSuccess({required this.item});
}

// Estado de erro genérico (usado em qualquer falha)
final class GenericErrorState<T> extends GenericState<T> {
  final Failure failure;
  const GenericErrorState({required this.failure});

  @override
  List<Object> get props => [failure];
}
