import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:desktop_demo/shared/extentions/common.dart';
import 'package:desktop_demo/shared/theme/colors.dart';

part 'loading_cubit.dart';

class LoadingWrapper extends StatelessWidget {
  final Widget? child;

  const LoadingWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingCubit, LoadingState>(
      builder: (context, state) =>
          Stack(
            children: [
              child ?? SizedBox.shrink(),
              if(state.isLoading)...[
                SizedBox(
                  height: context.height,
                  width: context.width,
                  child: ModalBarrier(color: AppColors.modalBarrierColor, dismissible: false),
                ),
                Center(
                  child: CircularProgressIndicator(),
                ),
              ],
            ],
          ),
    );
  }
}