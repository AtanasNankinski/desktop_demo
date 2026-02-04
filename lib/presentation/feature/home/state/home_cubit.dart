import 'package:desktop_demo/domain/repository/testing_repository.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:desktop_demo/shared/error/error.dart';
import 'package:equatable/equatable.dart';

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

class HomeState extends BaseState with EquatableMixin{
  HomeState(super.uiState, [super.error]);

  @override
  BaseState copyWith({UiState? uiState, AppError? error}) => HomeState(
    uiState ?? this.uiState,
    error ?? this.error
  );

  @override
  List<Object?> get props => [super.uiState, super.error];
}

sealed class HomeUIEvents {
  HomeUIEvents();
}

final class TestError extends HomeUIEvents {
  TestError();
}