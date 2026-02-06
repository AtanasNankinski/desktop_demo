part of 'data_cubit.dart';

class DataState extends BaseState with EquatableMixin {
  final List<ExampleData> exampleData;
  final List<ExampleData> filteredData;
  final ExampleDataSource gridData;

  DataState(this.exampleData, this.gridData, this.filteredData, super.uiState, [super.error]);

  @override
  List<Object?> get props => [gridData, filteredData, uiState, error];

  @override
  DataState copyWith({List<ExampleData>? exampleData, List<ExampleData>? filteredData, ExampleDataSource? gridData, UiState? uiState, AppError? error}) => DataState(
      exampleData ?? this.exampleData,
      gridData ?? this.gridData,
      filteredData ?? this.filteredData,
      uiState ?? this.uiState,
      error ?? this.error
  );
}