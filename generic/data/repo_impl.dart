import 'package:app1/core/error/failure.dart';

import 'package:dartz/dartz.dart';

import '../../../core/error/error.dart';
import '../domain/repo_abstract.dart';
import 'data_source_abstract.dart';

class RepoImpl<T> implements GenericRepository<T> {
  final GenericDataSource<T> _dataSource;

  RepoImpl({required GenericDataSource<T> dataSource})
      : _dataSource = dataSource;

  @override
  Future<Either<Failure, void>?> create(T item) async {
    try {
      return right(await _dataSource.create(item));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>?> delete(String id) async {
    try {
      return right(await _dataSource.delete(id));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<T>?>> getAll() async {
    try {
      return right(await _dataSource.getAll());
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, T?>> getById(String id) async {
    try {
      return right(await _dataSource.getById(id));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>?> update(String id, T item) async {
    try {
      return right(await _dataSource.update(id, item));
    } on ApiException catch (e) {
      return left(ApiFailure(status: e.statuscode, message: e.message));
    }
  }
}
