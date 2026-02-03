import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_demo/shared/error/error.dart';
import 'package:desktop_demo/shared/extentions/common.dart';
import 'package:desktop_demo/shared/theme/colors.dart';

part 'error_cubit.dart';

class ErrorWrapper extends StatelessWidget {
  final Widget? child;

  const ErrorWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ErrorCubit, AppError?>(
      builder: (context, state) =>
          Stack(
            children: [
              child ?? SizedBox.shrink(),
              if(state != null)...[
                SizedBox(
                  height: context.height,
                  width: context.width,
                  child: ModalBarrier(color: AppColors.modalBarrierColor, dismissible: false),
                ),
                Center(
                  child: AlertDialog.adaptive(
                    title: Text(state.title),
                    content: Text(state.description),
                    actions: [
                      ElevatedButton(
                        onPressed: () async {
                          await context.read<ErrorCubit>().onAction(ResetErrorEvent());
                        },
                        child: Text("Ok"),
                      )
                    ],
                  ),
                ),
              ],
            ],
          ),
    );
  }
}