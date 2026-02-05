import 'package:equatable/equatable.dart';

import 'package:desktop_demo/data/model/om_data.dart';
import 'package:desktop_demo/data/model/ov_data.dart';
import 'package:desktop_demo/shared/utils/constants.dart';

class ExampleData extends Equatable {
  final String id;
  final String name;
  final DateTime date;
  final String property1;
  final String property2;
  final String property3;
  final String property4;
  final String property5;
  final String property6;
  final String property7;
  final String property8;
  final String property9;
  final String property10;
  final String property11;
  final String property12;
  final List<OmData> omData;
  final List<OvData> ovData;

  const ExampleData(
    this.id,
    this.name,
    this.date,
    this.property1,
    this.property2,
    this.property3,
    this.property4,
    this.property5,
    this.property6,
    this.property7,
    this.property8,
    this.property9,
    this.property10,
    this.property11,
    this.property12,
    this.omData,
    this.ovData,
  );

  factory ExampleData.fromJson(Map<String, dynamic> map) => ExampleData(
      map['id'] as String,
      map['name'] as String,
      dateFormat.parse(map['date'] as String),
      map['property1'] as String,
      map['property2'] as String,
      map['property3'] as String,
      map['property4'] as String,
      map['property5'] as String,
      map['property6'] as String,
      map['property7'] as String,
      map['property8'] as String,
      map['property9'] as String,
      map['property10'] as String,
      map['property11'] as String,
      map['property12'] as String,
      (map['om_data'] as List<dynamic>?)?.map((e) => OmData.fromJson(e as Map<String, dynamic>)).toList() ?? [],
      (map['ov_data'] as List<dynamic>?)?.map((e) => OvData.fromJson(e as Map<String, dynamic>)).toList() ?? [],
  );

  Map<String, dynamic> toJson() => <String, dynamic> {
    'id': id,
    'name': name,
    'date': dateFormat.format(date),
    'property1': property1,
    'property2': property2,
    'property3': property3,
    'property4': property4,
    'property5': property5,
    'property6': property6,
    'property7': property7,
    'property8': property8,
    'property9': property9,
    'property10': property10,
    'property11': property11,
    'property12': property12,
    'om_data': omData.map((e) => e.toJson()).toList(),
    'ov_data': ovData.map((e) => e.toJson()).toList(),
  };

  @override
  String toString() {
    return 'ExampleData(id: $id, name: $name, date: $date, property1: $property1, property2: $property2, property3: $property3, property4: $property4, property5: $property5, property6: $property6, property7: $property7, property8: $property8, property9: $property9, property10: $property10, property11: $property11, property12: $property12, the length of omData is: ${omData.length}, the length of ovData is: ${ovData.length})';
  }

  @override
  List<Object?> get props => [id, name, date, property1, property2, property3, property4, property5, property6, property7, property8, property9, property10, property11, property12, omData, ovData];
}