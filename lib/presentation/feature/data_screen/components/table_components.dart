part of '../data_screen.dart';

List<StackedHeaderRow> _categoryHeaders() {
  return [
    StackedHeaderRow(cells: [
      AppColumns.categoryHeader(
        columnNames: ['id', 'name', 'date'],
        labelText: 'Category I',
      ),
      AppColumns.categoryHeader(
        columnNames: ['property1', 'property2', 'property3'],
        labelText: 'Category II',
      ),
      AppColumns.categoryHeader(
        columnNames: ['property4', 'property5', 'property6'],
        labelText: 'Category III',
      ),
      AppColumns.categoryHeader(
        columnNames: ['property7', 'property8', 'property9'],
        labelText: 'Category IV',
      ),
      AppColumns.categoryHeader(
        columnNames: ['property10', 'property11', 'property12'],
        labelText: 'Category V',
      ),
    ])
  ];
}

List<GridColumn> _headerColumns() {
  return [
    AppColumns.headerGridColumn(
      columnName: 'id',
      labelText: 'ID',
      isIdColumn: true,
    ),
    AppColumns.headerGridColumn(
      columnName: 'name',
      labelText: 'Name',
    ),
    AppColumns.headerGridColumn(
      columnName: 'date',
      labelText: 'Date',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property1',
      labelText: 'Property I',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property2',
      labelText: 'Property II',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property3',
      labelText: 'Property III',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property4',
      labelText: 'Property IV',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property5',
      labelText: 'Property V',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property6',
      labelText: 'Property VI',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property7',
      labelText: 'Property VII',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property8',
      labelText: 'Property VIII',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property9',
      labelText: 'Property IX',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property10',
      labelText: 'Property X',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property11',
      labelText: 'Property XI',
    ),
    AppColumns.headerGridColumn(
      columnName: 'property12',
      labelText: 'Property XII',
    ),
  ];
}