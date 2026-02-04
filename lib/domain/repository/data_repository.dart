import 'package:desktop_demo/data/model/example_data.dart';

abstract class DataRepository {
  Future<List<ExampleData>> getExampleData();
}