import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/models/user_model.dart';

class FirestoreDB {
  CollectionReference userDb = Firestore.instance.collection('User');

  Future createUser(User user) async {
    try {
      await userDb.document(user.userId).setData(user.toJson());
      return true;
    } catch (e) {
      print(e.toString());
    }
  }

  Future getUser(String id) async {
    try {
      var user = await userDb.document(id).get();
      return User.fromDB(user.data);
    } catch (e) {
      print(e.toString());
      return e.toString();
    }
  }
}
