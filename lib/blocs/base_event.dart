part of 'base_bloc.dart';

@immutable
abstract class BaseEvent {}

class UIEventAddObservation extends BaseEvent {
  final int selectedIndex;
  final String selectedObservation;

  UIEventAddObservation({
    this.selectedIndex = -1,
    this.selectedObservation = 'observation_text',
  });
}

class UIEventFilePicker extends BaseEvent {
  final Map<String, dynamic> map;

  UIEventFilePicker({
    this.map = const {}
  });
}
