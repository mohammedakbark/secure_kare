class ManagerModel {
  String? managername;
  String? managerplace;

  String? managerage;
  String? manageridnumber;
  String? managerid;
  String? manageremail;
  String? managerimage;
  String? id;

  String? managerpassword;
  ManagerModel(
      {this.managername,
      this.managerplace,
      this.managerage,
      this.manageridnumber,
      this.manageremail,
      this.managerpassword,
      this.managerid,
      this.managerimage,
      this.id});

  get isEmpty => null;

  get length => null;
  Map<String, dynamic> toJson(docId) => {
        "managername": managername,
        "managerplace": managerplace,
        "managerage": managerage,
        "manageridnumber": manageridnumber,
        "manageremail": manageremail,
        "managerpassword": managerpassword,
        "managerid": managerid,
        "managerimage": managerimage,
      };
  factory ManagerModel.fromJson(Map<String, dynamic> json) {
    return ManagerModel(
      managername: json["managername"],
      managerplace: json["managerplace"],
      managerage: json["managerage"],
      manageridnumber: json["manageridnumber"],
      manageremail: json["manageremail"],
      managerpassword: json["managerpassword"],
      managerid: json["managerid"],
      managerimage: json["managerimage"],
    );
  }
}
