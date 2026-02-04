import 'package:equatable/equatable.dart';

import 'package:desktop_demo/shared/utils/constants.dart';

class OmData extends Equatable {
  final String id;
  final String holder;
  final DateTime date;
  final String op1;
  final String op2;
  final String op3;
  final String op4;
  final String op5;
  final String op6;

  const OmData(this.id, this.holder, this.date, this.op1, this.op2, this.op3, this.op4, this.op5, this.op6);


  factory OmData.fromJson(Map<String, dynamic> map) => OmData(
    map['id'] as String,
    map['holder'] as String,
    dateFormat.parse(map['date'] as String),
    map['op1'] as String,
    map['op2'] as String,
    map['op3'] as String,
    map['op4'] as String,
    map['op5'] as String,
    map['op6'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'holder': holder,
    'date': dateFormat.format(date),
    'op1': op1,
    'op2': op2,
    'op3': op3,
    'op4': op4,
    'op5': op5,
    'op6': op6,
  };

  @override
  List<Object?> get props => [id, holder, date, op1, op2, op3, op4, op5, op6];
}