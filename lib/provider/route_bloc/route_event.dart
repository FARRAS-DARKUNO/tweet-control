part of 'route_bloc.dart';

abstract class RouteEvent {}

class SetRoutePageEvent extends RouteEvent {
  final String routePage;
  SetRoutePageEvent(this.routePage);
}
