class UserReportsModel {
  String? reportuserissues;
  String? reportid;
  String? id;
  String reportname;

  UserReportsModel({
    this.reportuserissues,
    this.reportid,
    this.id,
    required this.reportname,
  });

  Map<String, dynamic> toJson(docId) => {
        "reportuserissues": reportuserissues,
        "reportid": reportid,
        "id": id,
        'reprtname': reportname
      };

  factory UserReportsModel.fromJson(Map<String, dynamic> json) {
    return UserReportsModel(
        reportuserissues: json["reportuserissues"],
        reportid: json["reportid"],
        id: json["id"],
        reportname: json['reprtname']);
  }
}
