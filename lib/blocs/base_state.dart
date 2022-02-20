part of 'base_bloc.dart';

@immutable
abstract class BaseState {}

class BaseInitial extends BaseState {}

class UIStateAddObservation extends BaseState {
  final int selectedIndex;
  final String selectedObservation;

  UIStateAddObservation({
    this.selectedIndex = -1,
    this.selectedObservation = 'observation_text',
  });
}

class UIStateFilePicker extends BaseState {

  final Map<String,dynamic>  map;

  UIStateFilePicker({
    this.map =const {}
  });
}
