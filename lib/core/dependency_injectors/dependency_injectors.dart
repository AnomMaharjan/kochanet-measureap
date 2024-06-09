import 'package:get_it/get_it.dart';
import 'package:measureap/core/firebase/firebase_service.dart';
import 'package:measureap/feature/assessments/domain/repository/assessments_repository.dart';

import '../../feature/assessments/data/assessment_repository_impl.dart';

GetIt di = GetIt.instance;

class DependencyInjector {
  static Future<void> initDependencies() async {
    di.registerFactory<AssessmentRepository>(
        () => AssessmentRepositoryImpl(di()));
    di.registerSingleton(FirestoreService());
  }
}
