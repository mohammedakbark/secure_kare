class ManagerReportModel {
  String? reportManagerissues;
  String? reportid;
  String? id;

  ManagerReportModel({this.reportManagerissues, this.reportid, this.id});
  Map<String, dynamic> toJson(docId) => {
        "reportManagerissues": reportManagerissues,
        "reportid": reportid,
        "id": id
      };
  factory ManagerReportModel.fromJson(Map<String, dynamic> json) {
    return ManagerReportModel(
      reportManagerissues: json["reportManagerissues"],
      reportid: json["reportid"],
      id: json["id"],
    );
  }
}
