import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:measureap/core/firebase/firebase_constants.dart';
import '../../feature/assessments/domain/entity/applicable_measures_entity.dart';
import '../../feature/assessments/domain/entity/cognitive_status_entity.dart';
import '../../feature/assessments/domain/entity/patient_entity.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveAllUserAnswers(
      String userId, List<Map<String, dynamic>> answers) async {
    final userDoc = _db.collection('recent_answers').doc(userId);

    // Convert the list of answers to a format Firestore understands
    List<Map<String, dynamic>> formattedAnswers = answers
        .map((answer) => {
              'questionIndex': answer['questionIndex'],
              'status': answer['status'],
            })
        .toList();

    await userDoc.set({FirebaseConstants.answersField: formattedAnswers});
  }

  Future<List<Map<String, dynamic>>> fetchUserAnswers(String userId) async {
    final querySnapshot = await _db
        .collection(FirebaseConstants.userAnswersCollection)
        .where(FirebaseConstants.userIdField, isEqualTo: userId)
        .get();
    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }

  Future<List<CognitiveStatus>> fetchCognitiveStatuses() async {
    try {
      final cognitiveStatusesRef = FirebaseFirestore.instance
          .collection(FirebaseConstants.cognitiveStatusesCollection);
      final cognitiveStatusesQuerySnapshot = await cognitiveStatusesRef.get();
      final cognitiveStatusesList =
          cognitiveStatusesQuerySnapshot.docs.map((doc) {
        final cognitiveStatusData = doc.data();
        final cognitiveStatusId =
            cognitiveStatusData[FirebaseConstants.idField];
        final cognitiveStatusName =
            cognitiveStatusData[FirebaseConstants.nameField];
        return CognitiveStatus(
          id: cognitiveStatusId,
          name: cognitiveStatusName,
        );
      }).toList();
      return cognitiveStatusesList;
    } catch (error) {
      print('Error fetching cognitive statuses from Firebase: $error');
      return [];
    }
  }

  Future<List<ApplicableMeasures>> fetchApplicableMeasures(
      String cognitiveStatusId) async {
    try {
      final measuresRef = FirebaseFirestore.instance
          .collection(FirebaseConstants.applicableMeasuresCollection)
          .where(FirebaseConstants.cognitiveStatusIdField,
              isEqualTo: cognitiveStatusId);
      final measuresQuerySnapshot = await measuresRef.get();
      final measuresList = measuresQuerySnapshot.docs.map((doc) {
        final measureData = doc.data();
        final measureId = measureData[FirebaseConstants.idField];
        final measureName = measureData[FirebaseConstants.nameField];
        return ApplicableMeasures(
          id: measureId,
          name: measureName,
        );
      }).toList();
      return measuresList;
    } catch (error) {
      print('Error fetching applicable measures from Firebase: $error');
      return [];
    }
  }

  Future<List<Patient>> fetchPatients(String measureId) async {
    try {
      final patientsRef = FirebaseFirestore.instance
          .collection(FirebaseConstants.patientsCollection)
          .where(FirebaseConstants.applicableMeasureIdField,
              isEqualTo: measureId);
      final patientsQuerySnapshot = await patientsRef.get();
      final patientsList = patientsQuerySnapshot.docs.map((doc) {
        final patientData = doc.data();
        final patientId = patientData[FirebaseConstants.idField];
        final patientName = patientData[FirebaseConstants.nameField];
        return Patient(
          id: patientId,
          name: patientName,
        );
      }).toList();
      return patientsList;
    } catch (error) {
      print('Error fetching patients from Firebase: $error');
      return [];
    }
  }
}
