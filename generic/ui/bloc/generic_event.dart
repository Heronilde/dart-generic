part of 'generic_bloc.dart';

sealed class GenericEvent<T> extends Equatable {
  const GenericEvent();

  @override
  List<Object?> get props => [];
}

// Evento de carregamento genérico
final class LoadItemEvent<T> extends GenericEvent<T> {
  final String id; // ID do item a ser carregado
  const LoadItemEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

// Evento de criação genérica
final class CreateItemEvent<T> extends GenericEvent<T> {
  final T item;
  const CreateItemEvent({required this.item});

  @override
  List<Object?> get props => [item];
}

// Evento de atualização genérica
final class UpdateItemEvent<T> extends GenericEvent<T> {
  final String id;
  final T updatedItem;
  const UpdateItemEvent({required this.id, required this.updatedItem});

  @override
  List<Object?> get props => [id, updatedItem];
}

// Evento de exclusão genérica
final class DeleteItemEvent<T> extends GenericEvent<T> {
  final String id; // ID do item a ser deletado
  const DeleteItemEvent({required this.id});

  @override
  List<Object?> get props => [id];
}

// Evento de erro genérico (pode ser usado se for necessário disparar um erro manualmente)
final class GenericErrorEvent<T> extends GenericEvent<T> {
  final Failure failure;
  const GenericErrorEvent({required this.failure});

  @override
  List<Object?> get props => [failure];
}
