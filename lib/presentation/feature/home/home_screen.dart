import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';
import 'package:desktop_demo/presentation/feature/home/state/home_cubit.dart';
import 'package:desktop_demo/shared/base/base_bloc_builder.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stateNotifier = context.read<HomeCubit>();

    return BaseLayout(
      title: Text(
        "Home Screen",
        style: context.appBarTitle,
      ),
      child: BaseBlocBuilder<HomeCubit, BaseState>(
        builder: (context, state) {
          return Column(
            children: [
              Spacer(),
              Text(
                "Home Screen",
                style: context.titleLarge,
              ),
              ElevatedButton(
                onPressed: () async {
                  await stateNotifier.onAction(TestError());
                  //Routes.dataPage.replace(context);
                },
                child: Text("Data Screen"),
              ),
              Spacer(),
            ],
          );
        }
      ),
    );
  }
}
