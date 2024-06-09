import 'package:measureap/feature/assessments/domain/entity/applicable_measures_entity.dart';
import 'package:measureap/feature/assessments/domain/entity/cognitive_status_entity.dart';
import 'package:measureap/feature/assessments/domain/entity/patient_entity.dart';
import 'package:measureap/feature/assessments/domain/repository/assessments_repository.dart';
import '../../../core/firebase/firebase_service.dart';

class AssessmentRepositoryImpl implements AssessmentRepository {
  final FirestoreService _firebaseService;
  AssessmentRepositoryImpl(this._firebaseService);

  @override
  Future<List<CognitiveStatus>> fetchCognitiveStatuses() async {
    try {
      return await _firebaseService.fetchCognitiveStatuses();
    } catch (error) {
      throw Exception('Failed to fetch cognitive statuses: $error');
    }
  }

  @override
  Future<List<ApplicableMeasures>> fetchApplicableMeasures(
      String cognitiveStatusId) async {
    try {
      return await _firebaseService.fetchApplicableMeasures(cognitiveStatusId);
    } catch (error) {
      throw Exception('Failed to fetch applicable measures: $error');
    }
  }

  @override
  Future<List<Patient>> fetchPatients(String measureId) async {
    try {
      return await _firebaseService.fetchPatients(measureId);
    } catch (error) {
      throw Exception('Failed to fetch patients: $error');
    }
  }
}
