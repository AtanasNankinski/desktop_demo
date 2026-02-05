import 'package:desktop_demo/domain/repository/testing_repository.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:desktop_demo/shared/error/error.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends BaseCubit<HomeState> {
  final TestingRepository _testingRepository;

  HomeCubit(this._testingRepository) : super(HomeState(UiState.normal));

  Future<void> onAction(HomeUIEvents event) async {
    await execute(() async {
      switch(event) {
        case TestError():
          await _testError();
      }
    });
  }

  Future<void> _testError() async {
    await _testingRepository.testError();
  }
}