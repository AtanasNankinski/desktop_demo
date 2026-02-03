part of 'error_wrapper.dart';

class ErrorCubit extends Cubit<AppError?> {
  ErrorCubit() : super(null);

  Future<void> onAction(ErrorCubitEvent action) async {
    switch(action) {
      case SetErrorEvent(:var error):
        emit(error);
      case ResetErrorEvent():
        emit(null);
    }
  }
}

sealed class ErrorCubitEvent {
  ErrorCubitEvent();
}

final class SetErrorEvent extends ErrorCubitEvent {
  final AppError? error;

  SetErrorEvent(this.error);
}

final class ResetErrorEvent extends ErrorCubitEvent {
  ResetErrorEvent();
}