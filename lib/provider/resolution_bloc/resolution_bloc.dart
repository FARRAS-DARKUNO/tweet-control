import 'package:flutter_bloc/flutter_bloc.dart';

part 'resolution_event.dart';
part 'resolution_state.dart';

class ResolutionBloc extends Bloc<ResolutionEvent, ResolutionState> {
  ResolutionBloc() : super(const ResolutionInitial()) {
    on<SetResolutionEvent>((event, emit) {
      emit(ResolutionLoaded(event.resolution));
    });
  }
}
