import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:desktop_demo/data/model/example_data.dart';
import 'package:desktop_demo/domain/repository/data_repository.dart';

class DataRepositoryImpl implements DataRepository {
  @override
  Future<List<ExampleData>> getExampleData() async {
    final jsonString = await rootBundle.loadString(
      'assets/data/example_data.json',
    );

    final decoded = jsonDecode(jsonString) as Map<String, dynamic>;

    final list = decoded['example_data'] as List<dynamic>;

    return list
        .map((e) => ExampleData.fromJson(e as Map<String, dynamic>))
        .toList();
  }

}