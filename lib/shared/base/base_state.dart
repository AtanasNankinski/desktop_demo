part of 'base_cubit.dart';

class BaseState {
  final UiState uiState;
  final AppError? error;

  const BaseState(this.uiState, [this.error]);

  BaseState copyWith({UiState? uiState, AppError? error}) => BaseState(
    uiState ?? this.uiState,
    error ?? this.error
  );
}

enum UiState {
  loading,
  normal,
  error,
}