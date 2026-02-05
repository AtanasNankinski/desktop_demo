import 'package:desktop_demo/shared/theme/colors.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class AppColumns {
  static GridColumn headerGridColumn({required String columnName, required String labelText, bool isIdColumn = false}) {
    return GridColumn(
      columnName: columnName,
      minimumWidth: isIdColumn ? 80 : 174,
      label: Container(
        decoration: BoxDecoration(
          color: AppColors.headerColumnColor,
          border: Border(left: BorderSide(width: 1, color: AppColors.columnBorderColor)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        child: Text(
          labelText,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  static StackedHeaderCell categoryHeader({required List<String> columnNames, required String labelText}) {
    return StackedHeaderCell(
      columnNames: columnNames,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.categoryRowColor,
          border: Border(left: BorderSide(width: 1, color: AppColors.columnBorderColor)),
        ),
        child: Text(labelText),
      ),
    );
  }
}