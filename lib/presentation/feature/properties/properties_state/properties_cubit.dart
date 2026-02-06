import 'package:equatable/equatable.dart';

import 'package:desktop_demo/data/model/example_data.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:desktop_demo/shared/error/error.dart';

part 'properties_state.dart';

class PropertiesCubit extends BaseCubit<PropertiesState> {
  final ExampleData initialData;

  PropertiesCubit(this.initialData) : super(PropertiesState(initialData, UiState.normal));
}