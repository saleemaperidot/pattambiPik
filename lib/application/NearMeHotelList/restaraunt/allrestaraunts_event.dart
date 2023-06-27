part of 'allrestaraunts_bloc.dart';

@freezed
class AllrestarauntsEvent with _$AllrestarauntsEvent {
  const factory AllrestarauntsEvent.loadRestaraunts() = LoadRestaraunts;

  const factory AllrestarauntsEvent.filterRestraunts({required String query}) =
      FilterRestraunts;
}
