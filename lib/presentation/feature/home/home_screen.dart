import 'package:desktop_demo/shared/components/common_button.dart';
import 'package:desktop_demo/shared/extentions/common.dart';
import 'package:flutter/material.dart';

import 'package:desktop_demo/shared/router/router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_demo/shared/components/base_layout.dart';
import 'package:desktop_demo/shared/extentions/text.dart';
import 'package:desktop_demo/presentation/feature/home/state/home_cubit.dart';
import 'package:desktop_demo/shared/base/base_bloc_builder.dart';
import 'package:desktop_demo/shared/base/base_cubit.dart';

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
            children: <Widget>[
              Spacer(),
              Text(
                "Home Screen",
                style: context.titleLarge,
              ),
              AppButton.primary(
                onPressed: () async {
                  await stateNotifier.onAction(TestError());
                },
                text: "Test Error",
              ),
              AppButton.primary(
                onPressed: () {
                  Routes.dataPage.push(context);
                },
                text: "Data Screen",
              ),
              Spacer(),
            ].divideWith(SizedBox(height: 16,)).toList(),
          );
        }
      ),
    );
  }
}
