import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_demo/presentation/feature/data_screen/state/data_cubit.dart';
import 'package:desktop_demo/shared/base/base_bloc_builder.dart';
import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateNotifier = context.read<DataCubit>();

    return BaseLayout(
      hasIntrinsicHeight: false,
      title: Text(
        "Data Screen",
        style: context.appBarTitle,
      ),
      child: BaseBlocBuilder<DataCubit, DataState>(
        isLoadingGlobal: true,
        builder: (context, state) =>
          Column(
            children: [
              Text(
                "Data Screen",
                style: context.titleLarge,
              ),
              SizedBox(height: 16,),
              Text(stateNotifier.state.data.length.toString()),
              SizedBox(height: 16,),
              for(var data in state.data) Text(data.toString()),
            ],
          ),
      ),
    );
  }
}
