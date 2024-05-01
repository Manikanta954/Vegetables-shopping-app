import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  void addUserData(User currentuser,String? userName,String? userEmail,String? userImage) async {
 await  FirebaseFirestore.instance.collection("userData").doc(currentuser.uid).set(
      {
        "userName":userName,
        "userEmail":userEmail,
        "userImage":userImage,
        "userId":currentuser.uid,
      });

  }
}
