import 'package:desktop_demo/shared/components/columns.dart';
import 'package:desktop_demo/shared/components/common_button.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';
import 'package:desktop_demo/presentation/feature/properties/properties_state/properties_cubit.dart';
import 'package:desktop_demo/shared/base/base_bloc_builder.dart';
import 'package:desktop_demo/shared/components/text_button.dart';
import 'package:desktop_demo/shared/theme/colors.dart';
import 'package:desktop_demo/shared/components/labeled_text_field.dart';
import 'package:desktop_demo/shared/components/app_divider.dart';

part 'components/table_components.dart';
part 'components/popup_menu.dart';

class PropertiesScreen extends StatelessWidget {
  PropertiesScreen({super.key});

  final idController = TextEditingController();
  final nameController = TextEditingController();
  final prop1Controller = TextEditingController();
  final prop2Controller = TextEditingController();
  final prop3Controller = TextEditingController();
  final prop4Controller = TextEditingController();
  final prop5Controller = TextEditingController();
  final prop6Controller = TextEditingController();
  final prop7Controller = TextEditingController();
  final prop8Controller = TextEditingController();
  final prop9Controller = TextEditingController();
  final prop10Controller = TextEditingController();

  final _omDataGridController = DataGridController();
  final _ovDataGridController = DataGridController();

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      padding: const EdgeInsets.all(16),
      hasIntrinsicHeight: false,
      title: Text(
        "Properties Screen",
        style: context.appBarTitle,
      ),
      child: BaseBlocBuilder<PropertiesCubit, PropertiesState>(
        builder: (context, state) {
          idController.text = state.data.id;
          nameController.text = state.data.name;
          prop1Controller.text = state.data.property1;
          prop2Controller.text = state.data.property2;
          prop3Controller.text = state.data.property3;
          prop4Controller.text = state.data.property4;
          prop5Controller.text = state.data.property5;
          prop6Controller.text = state.data.property6;
          prop7Controller.text = state.data.property7;
          prop8Controller.text = state.data.property8;
          prop9Controller.text = state.data.property9;
          prop10Controller.text = state.data.property10;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ..._propertiesHeader(state: state, context: context),
              ..._textFieldsSection(state: state, context: context),
              ..._omTable(state: state),
              ..._ovTable(state: state),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _propertiesHeader({required PropertiesState state, required BuildContext context}) {
    return [
      Row(
        children: [
          Text(state.data.name, style: context.titleLarge,),
          Spacer(),
          AppTextButton.defaultTextButton(
            text: "Print",
            onPressed: () {},
            icon: Padding(
              padding: EdgeInsets.only(top: 4),
              child: Icon(Icons.print, size: 20,),
            ),
          ),
          SizedBox(width: 16,),
          AppTextButton.defaultTextButton(
            text: "Save",
            onPressed: () {},
            icon: Padding(
              padding: EdgeInsets.only(top: 4),
              child: Icon(Icons.save_alt, size: 20,),
            ),
          ),
        ],
      ),
      SizedBox(height: 16,),
      Divider(
        height: 2,
        color: AppColors.dividerColor,
      ),
      SizedBox(height: 16,),
    ];
  }

  List<Widget> _textFieldsSection({required PropertiesState state, required BuildContext context}) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(child: LabeledTextField(label: "ID", readOnly: true, controller: idController)),
                    SizedBox(width: 16,),
                    Expanded(child: LabeledTextField(label: "Name", hintText: "Name", controller: nameController)),
                  ],
                ),
                SizedBox(height: 16,),
                LabeledTextField(label: "Property 1", hintText: "Property 1", controller: prop1Controller),
                SizedBox(height: 16,),
                LabeledTextField(label: "Property 2", hintText: "Property 2", controller: prop2Controller),
              ],
            ),
          ),
          SizedBox(width: 16,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                LabeledTextField(
                  label: "Property 3",
                  hintText: "Property 3",
                  controller: prop3Controller,
                  suffix: PropertiesPopupMenu(),
                ),
                SizedBox(height: 16,),
                LabeledTextField(
                  label: "Property 4",
                  hintText: "Property 4",
                  controller: prop4Controller,
                  suffix: PropertiesPopupMenu(),
                ),
                SizedBox(height: 16,),
                LabeledTextField(
                  label: "Property 5",
                  hintText: "Property 5",
                  controller: prop5Controller,
                  suffix: PropertiesPopupMenu(),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 16,),
      LabeledTextField(label: "Property 6", hintText: "Property 6", controller: prop6Controller, isBigField: true,),
      SizedBox(height: 16,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: LabeledTextField(label: "Property 7", hintText: "Property 7", controller: prop7Controller)),
          SizedBox(width: 16,),
          Expanded(child: LabeledTextField(label: "Property 8", hintText: "Property 8", controller: prop8Controller)),
          SizedBox(width: 16,),
          Expanded(child: LabeledTextField(label: "Property 9", hintText: "Property 9", controller: prop9Controller)),
          SizedBox(width: 16,),
          Expanded(child: LabeledTextField(label: "Property 10", hintText: "Property 10", controller: prop10Controller)),
        ],
      ),
      SizedBox(height: 16,),
    ];
  }

  List<Widget> _omTable({required PropertiesState state}) {
    return [
      AppDivider(label: "Other Models"),
      SizedBox(height: 16,),
      AppButton.add(onPressed: () {},),
      SizedBox(height: 16,),
      SizedBox(
        height: 210,
        child: SfDataGridTheme(
          data: SfDataGridThemeData(
            selectionColor: AppColors.selectedRowColor,
            gridLineColor: AppColors.columnBorderColor,
            gridLineStrokeWidth: 1,
          ),
          child: SfDataGrid(
            columnWidthMode: ColumnWidthMode.fill,
            source: state.omGridData,
            selectionMode: SelectionMode.single,
            controller: _omDataGridController,
            columns: _omHeaderColumns(),
            stackedHeaderRows: _omCategoryHeaders(),
          ),
        ),
      ),
      SizedBox(height: 16,),
    ];
  }

  List<Widget> _ovTable({required PropertiesState state}) {
    return [
      AppDivider(label: "Variations of Example"),
      SizedBox(height: 16,),
      AppButton.add(onPressed: () {},),
      SizedBox(height: 16,),
      SizedBox(
        height: 210,
        child: SfDataGridTheme(
          data: SfDataGridThemeData(
            selectionColor: AppColors.selectedRowColor,
            gridLineColor: AppColors.columnBorderColor,
            gridLineStrokeWidth: 1,
          ),
          child: SfDataGrid(
            columnWidthMode: ColumnWidthMode.fill,
            source: state.ovGridData,
            selectionMode: SelectionMode.single,
            controller: _ovDataGridController,
            columns: _ovHeaderColumns(),
            stackedHeaderRows: _ovCategoryHeaders(),
          ),
        ),
      ),
    ];
  }
}