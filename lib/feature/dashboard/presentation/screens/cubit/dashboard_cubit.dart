import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:measureap/core/constants/string_constants.dart';
import 'package:measureap/feature/home/presentation/screens/home_screen.dart';
import 'package:measureap/feature/patients/presentation/screens/patients_screen.dart';

import '../../../../../core/constants/icons_manager.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<int> {
  DashboardCubit() : super(0);



  void switchIndex(int index) {
    emit(index);
  }
}
