import 'package:equatable/equatable.dart';

import 'package:desktop_demo/domain/repository/data_repository.dart';
import 'package:desktop_demo/shared/error/error.dart';
import 'package:desktop_demo/data/model/example_data.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';

class DataCubit extends BaseCubit<DataState> {
  final DataRepository _dataRepository;

  DataCubit(this._dataRepository) : super(DataState([], UiState.normal)) {
    _init();
  }

  Future<void> _init() async {
    await execute(() async {
      final data = await _dataRepository.getExampleData();

      emit(state.copyWith(data: data,));
    });
  }
}

class DataState extends BaseState with EquatableMixin {
  final List<ExampleData> data;

  DataState(this.data, super.uiState, [super.error]);

  @override
  List<Object?> get props => [data, uiState, error];

  @override
  DataState copyWith({List<ExampleData>? data, UiState? uiState, AppError? error}) => DataState(
      data ?? this.data,
      uiState ?? this.uiState,
      error ?? this.error
  );
}