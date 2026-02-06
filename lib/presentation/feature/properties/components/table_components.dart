part of '../properties_screen.dart';

List<StackedHeaderRow> _omCategoryHeaders() {
  return [
    StackedHeaderRow(cells: [
      AppColumns.categoryHeader(
        columnNames: ['id', 'date'],
        labelText: 'Other Category I',
      ),
      AppColumns.categoryHeader(
        columnNames: ['other_property_1', 'other_property_2'],
        labelText: 'Other Category II',
      ),
      AppColumns.categoryHeader(
        columnNames: ['other_property_3', 'other_property_4'],
        labelText: 'Other Category III',
      ),
      AppColumns.categoryHeader(
        columnNames: ['other_property_5', 'other_property_6'],
        labelText: 'Other Category IV',
      ),
    ])
  ];
}

List<GridColumn> _omHeaderColumns() {
  return [
    AppColumns.headerGridColumn(
      columnName: 'id',
      isIdColumn: true,
      labelText: 'ID',
    ),
    AppColumns.headerGridColumn(
      columnName: 'date',
      labelText: 'Variant',
    ),
    AppColumns.headerGridColumn(
      columnName: 'other_property_1',
      labelText: 'Variant Property 1',
    ),
    AppColumns.headerGridColumn(
      columnName: 'other_property_2',
      labelText: 'Variant Property 2',
    ),
    AppColumns.headerGridColumn(
      columnName: 'other_property_3',
      labelText: 'Variant Property 3',
    ),
    AppColumns.headerGridColumn(
      columnName: 'other_property_4',
      labelText: 'Variant Property 4',
    ),
    AppColumns.headerGridColumn(
      columnName: 'other_property_5',
      labelText: 'Variant Property 5',
    ),
    AppColumns.headerGridColumn(
      columnName: 'other_property_6',
      labelText: 'Variant Property 6',
    ),
  ];
}

List<StackedHeaderRow> _ovCategoryHeaders() {
  return [
    StackedHeaderRow(cells: [
      AppColumns.categoryHeader(
        columnNames: ['id', 'ovp1'],
        labelText: 'Variant Category I',
      ),
      AppColumns.categoryHeader(
        columnNames: ['ovp2', 'ovp3'],
        labelText: 'Variant Category II',
      ),
      AppColumns.categoryHeader(
        columnNames: ['ovp4', 'ovp5'],
        labelText: 'Variant Category III',
      ),
      AppColumns.categoryHeader(
        columnNames: ['ovp6', 'ovp7'],
        labelText: 'Variant Category IV',
      ),
    ])
  ];
}

List<GridColumn> _ovHeaderColumns() {
  return [
    AppColumns.headerGridColumn(
      columnName: 'id',
      isIdColumn: true,
      labelText: 'ID',
    ),
    AppColumns.headerGridColumn(
      columnName: 'ovp1',
      labelText: 'Variant Property 1',
    ),
    AppColumns.headerGridColumn(
      columnName: 'ovp2',
      labelText: 'Variant Property 2',
    ),
    AppColumns.headerGridColumn(
      columnName: 'ovp3',
      labelText: 'Variant Property 3',
    ),
    AppColumns.headerGridColumn(
      columnName: 'ovp4',
      labelText: 'Variant Property 4',
    ),
    AppColumns.headerGridColumn(
      columnName: 'ovp5',
      labelText: 'Variant Property 5',
    ),
    AppColumns.headerGridColumn(
      columnName: 'ovp6',
      labelText: 'Variant Property 6',
    ),
    AppColumns.headerGridColumn(
      columnName: 'ovp7',
      labelText: 'Variant Property 7',
    ),
  ];
}