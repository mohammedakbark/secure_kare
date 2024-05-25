class ProjectDetailsModel {
  String? agentaddprojectname;
  String? agentaddplace;
  String? agentaddstartdate;
  String? agentaddenddate;
  String? agentaddnoworers;
  String? agentaddbudget;
  String? agentaddmanager;
  String? projectimage;
  ProjectDetailsModel(
      {this.agentaddprojectname,
      this.agentaddplace,
      this.agentaddstartdate,
      this.agentaddenddate,
      this.agentaddnoworers,
      this.agentaddbudget,
      this.agentaddmanager,
      this.projectimage});
  Map<String, dynamic> toJson(docId) => {
        //agentaddprojrct
        "agentaddprojectname": agentaddprojectname,
        "agentaddplace": agentaddplace,
        "agentaddstartdate": agentaddstartdate,
        "agentaddenddate": agentaddenddate,
        "agentaddnoworers": agentaddnoworers,
        "agentaddbudget": agentaddbudget,
        "agentaddmanager": agentaddmanager,
        "projectimage": projectimage
      };
  factory ProjectDetailsModel.fromJson(Map<String, dynamic> json) {
    return ProjectDetailsModel(
        agentaddprojectname: json["agentaddprojectname"],
        agentaddplace: json["agentaddplace"],
        agentaddstartdate: json["agentaddstartdate"],
        agentaddenddate: json["agentaddenddate"],
        agentaddnoworers: json["agentaddnoworers"],
        agentaddbudget: json["agentaddbudget"],
        agentaddmanager: json["agentaddmanager"],
        projectimage: json["projectimage"]);
  }
}
