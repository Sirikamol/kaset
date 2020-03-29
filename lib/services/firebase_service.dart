import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  Future onDelete(String docID, String category) async {
    Firestore.instance.collection(category).document(docID).delete();
    return null;
  }
}
