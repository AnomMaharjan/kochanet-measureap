import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/feature/dashboard/presentation/screens/cubit/dashboard_cubit.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.bottomNavBarItems,
  });

  final List<BottomNavigationBarItem> bottomNavBarItems;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, int>(
      builder: (context, state) {
        final cubit = context.read<DashboardCubit>();
        return BottomNavigationBar(
          currentIndex: cubit.state,
          items: bottomNavBarItems,
          onTap: (index) {
            cubit.switchIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.assessmentCardTitleColor,
        );
      },
    );
  }
}
