import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_demo/shared/base/base_cubit.dart';
import 'package:desktop_demo/shared/loading/loading_wrapper.dart';
import 'package:desktop_demo/shared/error/error_wrapper.dart';

class BaseBlocBuilder<C extends BaseCubit<S>, S extends BaseState> extends StatelessWidget {
  final Widget Function(BuildContext context, S state) builder;
  final bool isLoadingGlobal;

  const BaseBlocBuilder({super.key, required this.builder, this.isLoadingGlobal = false});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<C, S>(
      builder: (context, state) {
        if(state.uiState == UiState.loading && !isLoadingGlobal) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if(state.uiState == UiState.loading && isLoadingGlobal) {
          context.read<LoadingCubit>().onAction(StartLoading());
        } else if (state.uiState == UiState.normal && isLoadingGlobal) {
          context.read<LoadingCubit>().onAction(FinishLoading());
        }

        if(state.uiState == UiState.error) {
          WidgetsBinding.instance.addPostFrameCallback((_) async {
            await context.read<ErrorCubit>().onAction(SetErrorEvent(state.error));
          });
        }

        return builder(context, state);
      },
    );
  }
}