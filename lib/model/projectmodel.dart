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
        "projectName": agentaddprojectname,
        "place": agentaddplace,
        "startDate": agentaddstartdate,
        "endDate": agentaddenddate,
        "numberOfWorkers": agentaddnoworers,
        "budget": agentaddbudget,
        "agentaddmanager": agentaddmanager,
        "projectimage": projectimage
      };
  factory ProjectDetailsModel.fromJson(Map<String, dynamic> json) {
    return ProjectDetailsModel(
        agentaddprojectname: json["projectName"],
        agentaddplace: json["place"],
        agentaddstartdate: json["startDate"],
        agentaddenddate: json["endDate"],
        agentaddnoworers: json["numberOfWorkers"],
        agentaddbudget: json["budget"],
        agentaddmanager: json["agentaddmanager"],
        projectimage: json["projectimage"]);
  }
}
