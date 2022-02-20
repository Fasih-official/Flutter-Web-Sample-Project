import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'base_event.dart';

part 'base_state.dart';

class BaseBloc extends Bloc<BaseEvent, BaseState> {
  BaseBloc() : super(BaseInitial()) {
    on<BaseEvent>((event, emit) {
      if (event is UIEventAddObservation) {
        emit.call(UIStateAddObservation(
            selectedIndex: event.selectedIndex,
            selectedObservation: event.selectedObservation));
      }
      if (event is UIEventFilePicker) {
        emit.call(
          UIStateFilePicker(
            map: event.map
          ),
        );
      }
    });
  }
}
