import 'package:desktop_demo/domain/repository/testing_repository.dart';
import 'package:desktop_demo/shared/error/error.dart';

class TestingRepositoryImpl extends TestingRepository {
  @override
  Future<void> testError() async {
    await Future.delayed(Duration(seconds: 1));

    throw DefaultException();
  }
}