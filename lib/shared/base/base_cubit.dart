import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:desktop_demo/shared/error/error.dart';

part 'base_state.dart';

abstract class BaseCubit<T extends BaseState> extends Cubit<T> {
  BaseCubit(super.initialState);

  Future<void> execute(FutureOr<void> Function() action) async {
    try {
      onLoading();
      await action();
      onActionCompleted();
    } catch(e, st) {
      addError(e, st);
    } finally {
      if(state.uiState == UiState.error) {
        // Delaying the execution in order to give time for the UI to build and display the error dialog before restoring the state.
        await Future.delayed(const Duration(milliseconds: 100)).then((_) {
          onActionCompleted();
        });
      }
    }
  }

  void onLoading();

  void onActionCompleted();
}