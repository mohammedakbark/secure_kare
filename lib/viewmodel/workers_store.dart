import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:secure_kare/model/workersmodel.dart';

class WorkersStore {
  final db = FirebaseFirestore.instance;
  final CollectionReference agent =
      FirebaseFirestore.instance.collection("WORKERS");
  Future addWorkers(WorkersModel workersModel, uid) async {
    final doc = db.collection("WORKERS").doc(uid);
    doc.set(workersModel.toJson(uid));
  }
}
