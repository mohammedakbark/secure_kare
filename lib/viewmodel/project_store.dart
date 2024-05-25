import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:secure_kare/model/projectmodel.dart';

class ProjectStore {
    final db = FirebaseFirestore.instance;
  final CollectionReference usercollection =
      FirebaseFirestore.instance.collection("PROJECT");
  Future addprojectdetails(ProjectDetailsModel projectModel) async {
    final doc = db.collection("PROJECT").doc();

    doc.set(projectModel.toJson(doc.id));
  }
}
