import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tweet_control/utils/name_page.dart';

part 'route_event.dart';
part 'route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc() : super(const RouteInitial()) {
    on<SetRoutePageEvent>((event, emit) {
      emit(RouteLoaded(event.routePage));
    });
  }
}
