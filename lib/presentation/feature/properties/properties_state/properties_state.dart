part of 'properties_cubit.dart';

class PropertiesState extends BaseState with EquatableMixin {
  final ExampleData data;
  final OmDataSource omGridData;
  final OvDataSource ovGridData;

  PropertiesState(this.data, this.omGridData, this.ovGridData, super.uiState, [super.error]);

  @override
  BaseState copyWith({ExampleData? data, OmDataSource? omGridData, OvDataSource? ovGridData, UiState? uiState, AppError? error}) => PropertiesState(
    data ?? this.data,
    omGridData ?? this.omGridData,
    ovGridData ?? this.ovGridData,
    uiState ?? this.uiState,
    error ?? this.error,
  );

  @override
  List<Object?> get props => [data, uiState, error];
}