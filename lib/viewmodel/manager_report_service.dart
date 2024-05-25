import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:random_string/random_string.dart';
import 'package:secure_kare/model/manager_report_model.dart';

class ManagerReportService {
  final db = FirebaseFirestore.instance;
  String id = randomAlphaNumeric(10);
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection("ManagerReports");
  Future addManagerreports(
      ManagerReportModel ManagerreportModel, uid, id) async {
    final doc = db.collection("ManagerReports").doc(id);

    doc.set(ManagerreportModel.toJson(doc.id));
  }
}
