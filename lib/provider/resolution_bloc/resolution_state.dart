part of 'resolution_bloc.dart';

abstract class ResolutionState {
  final bool isTablet;
  const ResolutionState(this.isTablet);
}

class ResolutionInitial extends ResolutionState {
  const ResolutionInitial() : super(false);
}

class ResolutionLoaded extends ResolutionState {
  const ResolutionLoaded(bool isTablet) : super(isTablet);
}
