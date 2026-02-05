part of 'home_cubit.dart';

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