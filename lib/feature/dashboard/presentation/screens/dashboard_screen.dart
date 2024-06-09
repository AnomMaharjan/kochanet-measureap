import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/core/theme/app_colors.dart';
import 'package:measureap/core/widgets/bottom_nav_bar.dart';
import 'package:measureap/feature/dashboard/presentation/screens/cubit/dashboard_cubit.dart';

import '../widgets/bottom_navbar_widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, int>(builder: (context, state) {
      // final dashboardCubit = context.read<DashboardCubit>();
      return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        // appBar: const CustomAppBar(),
        body: screens[state],
        bottomNavigationBar: BottomNavBar(
          
          bottomNavBarItems: bottomNavItems,
        
        ),
      );
    });
  }
}
