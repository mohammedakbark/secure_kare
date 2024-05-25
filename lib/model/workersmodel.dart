class WorkersModel {
  String? workersname;
  String? workersplace;
  String? workersage;
  String? workersidnumber;
  String? workersemail;
  String? workersid;
  String? workerspassword;
  String? workerimage;
  String? id;
  WorkersModel(
      {this.workersname,
      this.workersplace,
      this.workersage,
      this.workersidnumber,
      this.workersemail,
      this.workersid,
      this.workerspassword,
      this.workerimage,
      this.id});

  Map<String, dynamic> toJson(docId) => {
        "workersname": workersname,
        "workersplace": workersplace,
        "workersage": workersage,
        "workersidnumber": workersidnumber,
        "workersemail": workersemail,
        "workersid": workersid,
        "workerspassword": workerspassword,
        "workerimage": workerimage,
        "id": docId
      };
  factory WorkersModel.fromJson(Map<String, dynamic> json) {
    return WorkersModel(
      workersname: json["workersname"],
      workersplace: json["workersplace"],
      workersage: json["workersage"],
      workersidnumber: json["workersidnumber"],
      workersemail: json["workersemail"],
      workersid: json["workersid"],
      workerspassword: json["workerspassword"],
      workerimage: json["workerimage"],
    );
  }
}
