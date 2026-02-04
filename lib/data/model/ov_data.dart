import 'package:equatable/equatable.dart';

class OvData extends Equatable {
  final String id;
  final String holder;
  final String ovp1;
  final String ovp2;
  final String ovp3;
  final String ovp4;
  final String ovp5;
  final String ovp6;
  final String ovp7;

  const OvData(
    this.id,
    this.holder,
    this.ovp1,
    this.ovp2,
    this.ovp3,
    this.ovp4,
    this.ovp5,
    this.ovp6,
    this.ovp7,
  );


  factory OvData.fromJson(Map<String, dynamic> json) => OvData(
    json['id'] as String,
    json['holder'] as String,
    json['ovp1'] as String,
    json['ovp2'] as String,
    json['ovp3'] as String,
    json['ovp4'] as String,
    json['ovp5'] as String,
    json['ovp6'] as String,
    json['ovp7'] as String,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'holder': holder,
    'ovp1': ovp1,
    'ovp2': ovp2,
    'ovp3': ovp3,
    'ovp4': ovp4,
    'ovp5': ovp5,
    'ovp6': ovp6,
    'ovp7': ovp7,
  };

  @override
  List<Object> get props => [id, holder, ovp1, ovp2, ovp3, ovp4, ovp5, ovp6, ovp7,];
}