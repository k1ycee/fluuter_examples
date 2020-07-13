import 'package:firebase_app/models/user_model.dart';
import 'package:firebase_app/services/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirestoreDB db = FirestoreDB();

  User _user;
  User get user => _user;

  // Signin anonymously
  Future<FirebaseUser> anonEnterance() async {
    AuthResult result = await _auth.signInAnonymously();
    FirebaseUser user = result.user;
    return user;
  }

// Sign-Up with username, email and password
  Future<FirebaseUser> signUp(
      String email, String password, String username) async {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    await db.createUser(User(username: username));
    FirebaseUser user = result.user;
    return user;
  }

// Sign-In with email and password
  Future<FirebaseUser> signIn(String email, String password) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user;
  }

// get the user when the app starts
  Future<FirebaseUser> getUser() async {
    FirebaseUser user = await _auth.currentUser();
    return user;
  }

// delete account
  Future<FirebaseUser> deleteAccount() async {
    FirebaseUser user = await _auth.currentUser();
    await user.delete();
    return user;
  }

// signout
  Future signOut() async {
    return await _auth.signOut();
  }

// get the user everytime the app starts
  Future populateUser(FirebaseUser user)async{
    if(user!=null){
      _user = await db.getUser(user.uid);
    }
  }

// if user is available to decide which auth screen to display
  Future<bool> userAvail()async{
    var user = await _auth.currentUser();
    await populateUser(user);
    return user != null;
  }
  
}
