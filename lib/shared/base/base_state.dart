part of 'base_cubit.dart';

abstract class BaseState {
  final UiState uiState;
  final AppError? error;

  const BaseState(this.uiState, [this.error]);

  BaseState copyWith({UiState? uiState, AppError? error});

  BaseState loading() => copyWith(uiState: UiState.loading);

  BaseState normal() => copyWith(uiState: UiState.normal, error: null);

  BaseState failure(AppError error) => copyWith(uiState: UiState.error, error: error);
}

enum UiState {
  loading,
  normal,
  error,
}