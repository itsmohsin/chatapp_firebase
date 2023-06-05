import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  //updating the userdata
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");
  final CollectionReference groupCOllocation =
      FirebaseFirestore.instance.collection("groups");

  // updating the userdata
  Future updateUserData(String fullname, String email) async {
    return await userCollection.doc(uid).set({
      "fullName": fullname,
      "email": email,
      "groups": [],
      "profilePic": "",
      "uid": uid,
    });
  }
}
