import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'allrestaraunts_event.dart';
part 'allrestaraunts_state.dart';
part 'allrestaraunts_bloc.freezed.dart';

class AllrestarauntsBloc
    extends Bloc<AllrestarauntsEvent, AllrestarauntsState> {
  AllrestarauntsBloc() : super(_Initial()) {
    on<AllrestarauntsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
