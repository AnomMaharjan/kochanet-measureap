import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:measureap/core/extensions/string_extension.dart';
import 'package:measureap/core/theme/app_colors.dart';

import '../../../../core/constants/icons_manager.dart';
import '../../../../core/constants/string_constants.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../../../patients/presentation/screens/patients_screen.dart';

List<Widget> screens = [
  const HomeScreen(),
  const PatientsScreen(),
  const HomeScreen(),
  const HomeScreen()
];

List<BottomNavigationBarItem> bottomNavItems = [
  BottomNavigationBarItem(
    icon: SizedBox(
      height: 24,
      width: 24,
      child: SvgPicture.asset(
        IconsManager.home,
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
    ),
    activeIcon: SizedBox(
        height: 24, width: 24, child: SvgPicture.asset(IconsManager.home)),
    label: StringConstants.home.capitalizeFirst(),
  ),
  BottomNavigationBarItem(
    icon: SizedBox(
      height: 24,
      width: 24,
      child: SvgPicture.asset(
        IconsManager.patients,
      ),
    ),
    activeIcon: SizedBox(
        height: 24,
        width: 24,
        child: SvgPicture.asset(
          IconsManager.patients,
          colorFilter: ColorFilter.mode(
              AppColors.assessmentCardTitleColor, BlendMode.srcIn),
        )),
    label: StringConstants.patients.capitalizeFirst(),
  ),
  BottomNavigationBarItem(
    icon: SizedBox(
      height: 24,
      width: 24,
      child: SvgPicture.asset(
        IconsManager.history,
      ),
    ),
    activeIcon: SizedBox(
        height: 24,
        width: 24,
        child: SvgPicture.asset(
          IconsManager.history,
          colorFilter: ColorFilter.mode(
              AppColors.assessmentCardTitleColor, BlendMode.srcIn),
        )),
    label: StringConstants.history.capitalizeFirst(),
  ),
  BottomNavigationBarItem(
    icon: SizedBox(
      height: 24,
      width: 24,
      child: SvgPicture.asset(IconsManager.settings),
    ),
    activeIcon: SizedBox(
        height: 24,
        width: 24,
        child: SvgPicture.asset(
          IconsManager.settings,
          colorFilter: ColorFilter.mode(
              AppColors.assessmentCardTitleColor, BlendMode.srcIn),
        )),
    label: StringConstants.settings.capitalizeFirst(),
  ),
];
