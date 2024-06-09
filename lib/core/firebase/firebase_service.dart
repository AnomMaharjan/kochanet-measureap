import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserAnswer(
      String userId, String questionId, String status) async {
    await _db.collection('user_answers').doc('$userId-$questionId').set({
      'userId': userId,
      'questionId': questionId,
      'status': status,
    });
  }

  Future<void> saveAllUserAnswers(String userId, List<Map<String, dynamic>> answers) async {
    final userDoc = _db.collection('sunira').doc(userId);

    // Convert the list of answers to a format Firestore understands
    List<Map<String, dynamic>> formattedAnswers = answers.map((answer) => {
      'questionIndex': answer['questionIndex'],
      'status': answer['status'],
    }).toList();

    await userDoc.set({'answers': formattedAnswers});
  }

  Future<List<Map<String, dynamic>>> fetchUserAnswers(String userId) async {
    final querySnapshot = await _db
        .collection('user_answers')
        .where('userId', isEqualTo: userId)
        .get();
    return querySnapshot.docs.map((doc) => doc.data()).toList();
  }
}
