import 'package:desktop_demo/domain/repository/testing_repository.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:desktop_demo/shared/error/error.dart';

class HomeCubit extends BaseCubit<BaseState> {
  final TestingRepository _testingRepository;

  HomeCubit(this._testingRepository) : super(BaseState(UiState.normal));

  Future<void> onAction(HomeUIEvents event) async {
    await execute(() async {
      switch(event) {
        case LoadData():
          await _loadData();
        case TestError():
          await _testError();
      }
    });
  }

  Future<void> _loadData() async {

  }

  Future<void> _testError() async {
    await _testingRepository.testError();
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    emit(state.copyWith(uiState: UiState.error, error: AppError.fromException(error)));

    super.onError(error, stackTrace);
  }

  @override
  void onActionCompleted() {
    emit(BaseState(UiState.normal, null));
  }

  @override
  void onLoading() {
    emit(state.copyWith(uiState: UiState.loading));
  }
}

sealed class HomeUIEvents {
  HomeUIEvents();
}

final class LoadData extends HomeUIEvents {
  LoadData();
}

final class TestError extends HomeUIEvents {
  TestError();
}