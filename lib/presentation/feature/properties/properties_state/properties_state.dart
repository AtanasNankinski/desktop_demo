part of 'properties_cubit.dart';

class PropertiesState extends BaseState with EquatableMixin {
  final ExampleData data;

  PropertiesState(this.data, super.uiState, [super.error]);

  @override
  BaseState copyWith({ExampleData? data, UiState? uiState, AppError? error}) => PropertiesState(
    data ?? this.data,
    uiState ?? this.uiState,
    error ?? this.error,
  );

  @override
  List<Object?> get props => [data, uiState, error];
}