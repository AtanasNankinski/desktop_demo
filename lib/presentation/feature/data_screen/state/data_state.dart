part of 'data_cubit.dart';

class DataState extends BaseState with EquatableMixin {
  final List<ExampleData> exampleData;
  final ExampleDataSource gridData;

  DataState(this.exampleData, this.gridData, super.uiState, [super.error]);

  @override
  List<Object?> get props => [gridData, uiState, error];

  @override
  DataState copyWith({List<ExampleData>? exampleData, ExampleDataSource? gridData, UiState? uiState, AppError? error}) => DataState(
      exampleData ?? this.exampleData,
      gridData ?? this.gridData,
      uiState ?? this.uiState,
      error ?? this.error
  );
}