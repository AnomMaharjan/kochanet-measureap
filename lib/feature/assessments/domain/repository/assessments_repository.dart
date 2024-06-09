import '../entity/applicable_measures_entity.dart';
import '../entity/cognitive_status_entity.dart';
import '../entity/patient_entity.dart';

abstract class AssessmentRepository {
  Future<List<CognitiveStatus>> fetchCognitiveStatuses();
  Future<List<ApplicableMeasures>> fetchApplicableMeasures(
      String cognitiveStatusId);
  Future<List<Patient>> fetchPatients(String measureId);
}
