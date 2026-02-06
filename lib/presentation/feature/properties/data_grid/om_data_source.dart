import 'dart:ui';

import 'package:desktop_demo/data/model/om_data.dart';
import 'package:desktop_demo/shared/theme/colors.dart';
import 'package:desktop_demo/shared/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class OmDataSource extends DataGridSource {
  List<DataGridRow> dataGridRows = [];

  OmDataSource({required List<OmData> omData}) {
    dataGridRows = omData
        .map<DataGridRow>((dataGridRow) =>
        DataGridRow(cells: [
          DataGridCell<String>(columnName: 'id', value: dataGridRow.id),
          DataGridCell<DateTime>(columnName: 'name', value: dataGridRow.date),
          DataGridCell<String>(columnName: 'op1', value: dataGridRow.op1),
          DataGridCell<String>(columnName: 'op2', value: dataGridRow.op2),
          DataGridCell<String>(columnName: 'op3', value: dataGridRow.op3),
          DataGridCell<String>(columnName: 'op4', value: dataGridRow.op4),
          DataGridCell<String>(columnName: 'op5', value: dataGridRow.op5),
          DataGridCell<String>(columnName: 'op6', value: dataGridRow.op6),
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