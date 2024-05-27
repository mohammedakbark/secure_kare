import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:secure_kare/model/user_report_model.dart';

class PoliceControler with ChangeNotifier {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;

  // List<UserReportsModel> userreport = [];
  // Future fetchCompleint() async {
  //   final snapshot = await db.collection('UserReports').get();

  //   userreport = snapshot.docs.map((e) {
  //     log(e.data().toString());
  //     return UserReportsModel.fromJson(e.data());
  //   }).toList();
  // }

  Future fetchCompleint() async {
    return db.collection('UserReports').snapshots();
  }
}
