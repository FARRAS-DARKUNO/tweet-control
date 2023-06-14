part of 'route_bloc.dart';

abstract class RouteState {
  final String routeState;
  const RouteState(this.routeState);
}

class RouteInitial extends RouteState {
  const RouteInitial() : super(dashboard);
}

class RouteLoaded extends RouteState {
  const RouteLoaded(String routeState) : super(routeState);
}
