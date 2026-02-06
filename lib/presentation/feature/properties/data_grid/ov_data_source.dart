import 'dart:ui';

import 'package:desktop_demo/data/model/ov_data.dart';
import 'package:desktop_demo/shared/theme/colors.dart';
import 'package:desktop_demo/shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class OvDataSource extends DataGridSource {
  List<DataGridRow> dataGridRows = [];

  OvDataSource({required List<OvData> ovData}) {
    dataGridRows = ovData
        .map<DataGridRow>((dataGridRow) =>
        DataGridRow(cells: [
          DataGridCell<String>(columnName: 'id', value: dataGridRow.id),
          DataGridCell<String>(columnName: 'ovp1', value: dataGridRow.ovp1),
          DataGridCell<String>(columnName: 'ovp2', value: dataGridRow.ovp2),
          DataGridCell<String>(columnName: 'ovp3', value: dataGridRow.ovp3),
          DataGridCell<String>(columnName: 'ovp4', value: dataGridRow.ovp4),
          DataGridCell<String>(columnName: 'ovp5', value: dataGridRow.ovp5),
          DataGridCell<String>(columnName: 'ovp6', value: dataGridRow.ovp6),
          DataGridCell<String>(columnName: 'ovp7', value: dataGridRow.ovp7),
        ]
        ),
    ).toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    int index = effectiveRows.indexOf(row);

    return DataGridRowAdapter(
      color: index.isEven ? Color(0xFFE3FAFF) : Color(0xFFFFE7E3),
      cells: row.getCells().map<Widget>((dataGridCell) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(left: BorderSide(width: 1, color: AppColors.columnBorderColor)),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            dataGridCell.value is DateTime
                ? dateFormat.format(dataGridCell.value as DateTime)
                : dataGridCell.value.toString(),
            overflow: TextOverflow.ellipsis,
          ),
        );
      }
      ).toList(),
    );
  }
}