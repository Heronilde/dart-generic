import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';
import 'repo_abstract.dart';

class GenericService<T> {
  GenericService({required GenericRepository<T> repoAbstract})
      : _repoAbstract = repoAbstract;

  final GenericRepository<T> _repoAbstract;

  Future<Either<Failure, void>?> createItem({required T item}) {
    return _repoAbstract.create(item);
  }

  Future<Either<Failure, void>?> deleteItem({required String id}) {
    return _repoAbstract.delete(id);
  }

  Future<Either<Failure, void>?> updateItem({required T item}) {
    return _repoAbstract.update(item);
  }

  Future<Either<Failure, T?>> getItem({required String itemId}) {
    return _repoAbstract.getById(itemId);
  }

  Future<Either<Failure, List<T>?>> getItems() {
    return _repoAbstract.getAll();
  }

  // Add any other generic methods as needed
}
