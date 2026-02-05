import 'package:equatable/equatable.dart';

import 'package:desktop_demo/domain/repository/data_repository.dart';
import 'package:desktop_demo/shared/error/error.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:desktop_demo/data/model/example_data.dart';
import 'package:desktop_demo/presentation/feature/data_screen/data_grid/data_source.dart';

part 'data_state.dart';
part 'data_events.dart';

class DataCubit extends BaseCubit<DataState> {
  final DataRepository _dataRepository;

  DataCubit(this._dataRepository) : super(DataState([], ExampleDataSource(exampleData: []), UiState.normal)) {
    _init();
  }

  Future<void> onAction(DataUiEvents action) async {
    execute(() async {
      switch (action) {
        case SearchUiEvent(:var query):
          await _search(query);
      }
    });
  }

  Future<void> _init() async {
    await execute(() async {
      final data = await _dataRepository.getExampleData();
      final dataSource = ExampleDataSource(exampleData: data);

      emit(state.copyWith(exampleData: data, gridData: dataSource,));
    });
  }

  Future<void> _search(String query) async {
    if(query.isEmpty) {
      await _init();
    } else {
      final newExampleData = _filterExampleData(state.exampleData, query);
      final newGridData = ExampleDataSource(exampleData: newExampleData);

      emit(state.copyWith(exampleData: newExampleData, gridData: newGridData));
    }
  }

  List<ExampleData> _filterExampleData(
      List<ExampleData> source,
      String query,
      ) {
    final lowerCaseQuery = query.toLowerCase();

    return source.where((e) {
      return e.name.toLowerCase().contains(lowerCaseQuery) ||
          e.date.toString().toLowerCase().contains(lowerCaseQuery) ||
          e.property1.toLowerCase().contains(lowerCaseQuery) ||
          e.property2.toLowerCase().contains(lowerCaseQuery) ||
          e.property3.toLowerCase().contains(lowerCaseQuery) ||
          e.property4.toLowerCase().contains(lowerCaseQuery) ||
          e.property5.toLowerCase().contains(lowerCaseQuery) ||
          e.property6.toLowerCase().contains(lowerCaseQuery) ||
          e.property7.toLowerCase().contains(lowerCaseQuery) ||
          e.property8.toLowerCase().contains(lowerCaseQuery) ||
          e.property9.toLowerCase().contains(lowerCaseQuery) ||
          e.property10.toLowerCase().contains(lowerCaseQuery) ||
          e.property11.toLowerCase().contains(lowerCaseQuery) ||
          e.property12.toLowerCase().contains(lowerCaseQuery);
    }).toList(growable: false);
  }
}