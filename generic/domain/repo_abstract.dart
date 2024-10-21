import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

abstract class GenericRepository<T> {
  Future<Either<Failure, List<T>?>> getAll();
  Future<Either<Failure, T?>> getById(String id);
  Future<Either<Failure, void>?> create(T item);
  Future<Either<Failure, void>?> update(T item);
  Future<Either<Failure, void>?> delete(String id);
}
