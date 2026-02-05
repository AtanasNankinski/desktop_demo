part of 'data_cubit.dart';

sealed class DataUiEvents {
  const DataUiEvents();
}

final class SearchUiEvent extends DataUiEvents {
  final String query;

  const SearchUiEvent(this.query);
}