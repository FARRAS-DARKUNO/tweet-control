import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../provider/resolution_bloc/resolution_bloc.dart';

checkTablet(BuildContext context) {
  final mediaQueryData = MediaQuery.of(context);
  final screenWidth = mediaQueryData.size.width;

  if (screenWidth < 720) {
    context.read<ResolutionBloc>().add(SetResolutionEvent(false));
  } else {
    context.read<ResolutionBloc>().add(SetResolutionEvent(true));
  }
}
