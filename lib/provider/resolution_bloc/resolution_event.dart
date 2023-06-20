part of 'resolution_bloc.dart';

abstract class ResolutionEvent {}

class SetResolutionEvent extends ResolutionEvent {
  final bool resolution;
  SetResolutionEvent(this.resolution);
}
