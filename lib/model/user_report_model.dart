import 'package:secure_kare/model/workersmodel.dart';

class UserReportsModel {
  String? reportuserissues;
  String? reportid;
  String? id;

  UserReportsModel({this.reportuserissues, this.reportid, this.id});

  Map<String, dynamic> toJson(docId) => {
        "reportuserissues": reportuserissues,
        "reportid": reportid,
        "id": id,
      };

  factory UserReportsModel.fromJson(Map<String, dynamic> json) {
    return UserReportsModel(
      reportuserissues: json["reportuserissues"],
      reportid: json["reportid"],
      id: json["id"],
    );
  }
}
