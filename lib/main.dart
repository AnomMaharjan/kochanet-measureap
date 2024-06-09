import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureap/core/routes/routes.dart';
import 'package:measureap/core/theme/app_theme.dart';
import 'package:measureap/feature/assessments/presentation/screens/new_assessment_screen.dart';
import 'package:measureap/feature/dashboard/presentation/screens/cubit/dashboard_cubit.dart';
import 'package:measureap/feature/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:measureap/feature/home/presentation/screens/home_screen.dart';
import 'package:measureap/questionaire/presentation/questionnaire_bloc.dart';
import 'package:measureap/questionaire/presentation/screens/questionnaire_screen.dart';
import 'package:measureap/questionaire/presentation/screens/result_screen.dart';
import 'core/dependency_injectors/dependency_injectors.dart';
import 'core/firebase/firebase_options.dart';
import 'core/firebase/firebase_service.dart';
import 'feature/assessments/presentation/bloc/assessment_cubit.dart';

final firestoreService = FirestoreService();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await DependencyInjector.initDependencies();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (context) => DashboardCubit()),
      BlocProvider(
        create: (context) => AssessmentCubit(di()),
      ),
      BlocProvider(create: (context) => QuestionnaireBloc(firestoreService)),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeasureAp',
      theme: AppTheme.lightThemeMode,
      routes: {
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.result: (context) => const ResultScreen(),
        AppRoutes.newAssessment: (context) => const NewAssessmentScreen(),
        AppRoutes.assessmentQuestionaire: (context) =>
            const QuestionnaireScreen(),
        AppRoutes.dashboard: (context) => const Dashboard(),
      },
      home: const Dashboard(),
    );
  }
}
