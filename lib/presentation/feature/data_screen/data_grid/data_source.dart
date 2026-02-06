import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import 'package:desktop_demo/shared/theme/colors.dart';
import 'package:desktop_demo/data/model/example_data.dart';

class ExampleDataSource extends DataGridSource {
  List<DataGridRow> dataGridRows = [];

  ExampleDataSource({required List<ExampleData> exampleData}) {
    dataGridRows = exampleData
        .map<DataGridRow>((dataGridRow) =>
        DataGridRow(cells: [
          DataGridCell<String>(columnName: 'id', value: dataGridRow.id),
          DataGridCell<String>(columnName: 'name', value: dataGridRow.name),
          DataGridCell<DateTime>(columnName: 'name', value: dataGridRow.date),
          DataGridCell<String>(columnName: 'property1', value: dataGridRow.property1),
          DataGridCell<String>(columnName: 'property2', value: dataGridRow.property2),
          DataGridCell<String>(columnName: 'property3', value: dataGridRow.property3),
          DataGridCell<String>(columnName: 'property4', value: dataGridRow.property4),
          DataGridCell<String>(columnName: 'property5', value: dataGridRow.property5),
          DataGridCell<String>(columnName: 'property6', value: dataGridRow.property6),
          DataGridCell<String>(columnName: 'property7', value: dataGridRow.property7),
          DataGridCell<String>(columnName: 'property8', value: dataGridRow.property8),
          DataGridCell<String>(columnName: 'property9', value: dataGridRow.property9),
          DataGridCell<String>(columnName: 'property10', value: dataGridRow.property10),
          DataGridCell<String>(columnName: 'property11', value: dataGridRow.property11),
          DataGridCell<String>(columnName: 'property12', value: dataGridRow.property12),
        ]
      )
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
              dataGridCell.value.toString(),
              overflow: TextOverflow.ellipsis,
            ),
          );
        }
      ).toList(),
    );
  }
}