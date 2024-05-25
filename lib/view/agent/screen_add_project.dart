import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/model/projectmodel.dart';
import 'package:secure_kare/view/agent/screen_homeagent.dart';
import 'package:secure_kare/viewmodel/function_provider.dart';
import 'package:secure_kare/viewmodel/project_store.dart';
import 'package:secure_kare/viewmodel/ui_work_provider.dart';



class ScreenAgentAddProject extends StatefulWidget {
  const ScreenAgentAddProject({super.key});

  @override
  State<ScreenAgentAddProject> createState() => _ScreenAgentAddProjectState();
}

class _ScreenAgentAddProjectState extends State<ScreenAgentAddProject> {
  @override
  Widget build(BuildContext context) {
    final funprovider = Provider.of<FunProvider>(context);
    final workprovider = Provider.of<WorkProvider>(context);
    ProjectStore projectobj = ProjectStore();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return ScreenHomeAgent();
                  },
                ));
              },
              icon: const Icon(
                Icons.arrow_circle_left,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          title: Text(
            "Add Project",
            style: GoogleFonts.manrope(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.error))]),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
        child: SingleChildScrollView(
          child: Form(
            key: funprovider.formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Project name",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentaddprojectname,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your Project Name ";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Place",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentaddplace,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your Place";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Start Date",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  readOnly: true,
                  controller: funprovider.agentaddstartdate,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your project Start date";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      //  hintText: "Project start date",
                      suffixIcon: IconButton(
                          onPressed: () {
                            funprovider.datepickforstrtdate(context);
                          },
                          icon: Icon(Icons.calendar_month)),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "End Date",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  readOnly: true,
                  controller: funprovider.agentaddenddate,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your project End date";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            funprovider.datepickforenddate(context);
                          },
                          icon: Icon(Icons.calendar_month)),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  " No. of workers",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentaddnoworers,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter number of workers";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  " Budget",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentaddbudget,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your Budget";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  " Manager",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentaddmanager,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Project Manager";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            workprovider.dropdownmanager(context);
                          },
                          icon: Icon(Icons.arrow_drop_down)),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {
                          funprovider.pickimagefromgallery();
                        },
                        child: Text(
                          "Add Image",
                          style: GoogleFonts.manrope(color: Colors.black),
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 13, 42, 91)),
                      onPressed: () {
                        if (funprovider.formkey.currentState!.validate()) {
                          ProjectDetailsModel agentobj = ProjectDetailsModel(
                            agentaddprojectname:
                                funprovider.agentaddprojectname.text,
                            agentaddplace: funprovider.agentaddplace.text,
                            agentaddstartdate:
                                funprovider.agentaddstartdate.text,
                            agentaddenddate: funprovider.agentaddenddate.text,
                            agentaddnoworers: funprovider.agentaddnoworers.text,
                            agentaddbudget: funprovider.agentaddbudget.text,
                            agentaddmanager: funprovider.agentaddmanager.text,
                            projectimage: funprovider.imageurl,
                          );
                          projectobj
                              .addprojectdetails(
                            agentobj,
                          )
                              .then((value) {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) {
                                return ScreenHomeAgent();
                              },
                            ));
                          });
                        }
                      },
                      child: Text(
                        " Update",
                        style: GoogleFonts.manrope(),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
