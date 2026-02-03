part of 'loading_wrapper.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(LoadingState(false));

  void onAction(LoadingEvent action) {
    switch(action) {
      case StartLoading():
        if(!state.isLoading) emit(state.changeLoading());
      case FinishLoading():
        if(state.isLoading) emit(state.changeLoading());
    }
  }
}

class LoadingState extends Equatable {
  final bool isLoading;

  const LoadingState(this.isLoading);

  @override
  List<Object?> get props => [isLoading];

  LoadingState changeLoading() => LoadingState(!isLoading);
}

sealed class LoadingEvent {
  LoadingEvent();
}

final class StartLoading extends LoadingEvent {
  StartLoading();
}

final class FinishLoading extends LoadingEvent {
  FinishLoading();
}