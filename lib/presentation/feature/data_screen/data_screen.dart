import 'package:auto_route/auto_route.dart';
import 'package:desktop_demo/shared/router/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import 'package:desktop_demo/presentation/feature/data_screen/state/data_cubit.dart';
import 'package:desktop_demo/shared/base/base_bloc_builder.dart';
import 'package:desktop_demo/shared/components/columns.dart';
import 'package:desktop_demo/shared/components/common_button.dart';
import 'package:desktop_demo/shared/theme/colors.dart';
import 'package:desktop_demo/shared/components/text_field.dart';

part 'components/table_components.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  final DataGridController _dataGridController = DataGridController();
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //state variables
    final stateNotifier = context.read<DataCubit>();

    //util values
    final selectedIndex = _dataGridController.selectedIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text("Data Screen"),
        centerTitle: true,
      ),
      body: BaseBlocBuilder<DataCubit, DataState>(
        isLoadingGlobal: true,
        builder: (context, state) =>
        Column(
          children: [
            SizedBox(height: 16,),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppTextField.search(controller: _searchController),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppButton.short(
                      onPressed: () async {
                        await stateNotifier.onAction(SearchUiEvent(_searchController.text));
                      },
                      text: "Search",
                    ),
                    SizedBox(width: 16,),
                    AppButton.short(
                      isActive: (selectedIndex != -1),
                      onPressed:() {
                        final data = state.filteredData[selectedIndex];

                        print(data);

                        context.router.push(PropertiesRoute(data: data));
                      },
                      text: "Open",
                    ),
                    SizedBox(width: 16,),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16,),
            Expanded(
              child: SfDataGridTheme(
                data: SfDataGridThemeData(
                  selectionColor: AppColors.selectedRowColor,
                  gridLineColor: AppColors.columnBorderColor,
                  gridLineStrokeWidth: 1,
                ),
                child: SfDataGrid(
                  source: state.gridData,
                  selectionMode: SelectionMode.single,
                  controller: _dataGridController,
                  onSelectionChanged: (addedRows, removedRows) {
                    setState(() {});
                  },
                  columns: _headerColumns(),
                  stackedHeaderRows: _categoryHeaders(),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }

  @override
  void dispose() {
    _dataGridController.dispose();
    _searchController.dispose();

    super.dispose();
  }
}
