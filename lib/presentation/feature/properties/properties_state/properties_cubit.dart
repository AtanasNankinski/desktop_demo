import 'package:desktop_demo/presentation/feature/properties/data_grid/om_data_source.dart';
import 'package:desktop_demo/presentation/feature/properties/data_grid/ov_data_source.dart';
import 'package:equatable/equatable.dart';

import 'package:desktop_demo/data/model/example_data.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:desktop_demo/shared/error/error.dart';

part 'properties_state.dart';

class PropertiesCubit extends BaseCubit<PropertiesState> {
  final ExampleData initialData;

  PropertiesCubit(this.initialData) : super(PropertiesState(initialData, OmDataSource(omData: initialData.omData), OvDataSource(ovData: initialData.ovData), UiState.normal));
}