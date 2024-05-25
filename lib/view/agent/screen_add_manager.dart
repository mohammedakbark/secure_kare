import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/model/managermodel.dart';
import 'package:secure_kare/view/agent/screen_homeagent.dart';
import 'package:secure_kare/viewmodel/function_provider.dart';

import '../../viewmodel/manager_store.dart';

class ScreenAddManager extends StatefulWidget {
  const ScreenAddManager({super.key});

  @override
  State<ScreenAddManager> createState() => _ScreenAddManagerState();
}

class _ScreenAddManagerState extends State<ScreenAddManager> {
  @override
  Widget build(BuildContext context) {
    final funprovider = Provider.of<FunProvider>(context);
    ManagerService managermodel = ManagerService();
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
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Add Manager",
            style: GoogleFonts.manrope(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.error))]),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 45),
        child: SingleChildScrollView(
          child: Form(
            key: funprovider.formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentmanagername,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your name";
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
                  controller: funprovider.agentmanagerplace,
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
                  "Age",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your age";
                    } else {
                      return null;
                    }
                  },
                  // validator: (value) {
                  //   int age = int.parse(value!);
                  //   if (age <= 0 || age > 150) {
                  //     return "Please enters a valid age";
                  //   } else {
                  //     return null;
                  //   }
                  // },
                  controller: funprovider.agentmanagerage,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "ID Number",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentmanagerIdnumber,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your ID number";
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
                  " Email",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentmanageremail,
                  validator: (value) {
                    if (funprovider.emailregexp
                        .hasMatch(funprovider.agentmanageremail.text)) {
                      return null;
                    } else {
                      return "Please enter valid Email";
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "ID",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: funprovider.agentmanagerid,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your ID ";
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
                  " Password",
                  style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w500, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: funprovider.agentmanagerpassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter Your Password";
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
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      funprovider.pickimagefromgallery();
                    },
                    child: Text(
                      "Add Image",
                      style: GoogleFonts.manrope(color: Colors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 130,
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 13, 42, 91)),
                      onPressed: () {
                        if (funprovider.formkey.currentState!.validate()) {
                          funprovider.signupwithmanager(context).then(
                            (value) {
                              funprovider.sendEmail(
                                  funprovider.agentmanagerpassword.text,
                                  ('Work force kerela Login Password is:${funprovider.agentmanagerpassword.text}'),
                                  funprovider.agentmanageremail.text);
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return ScreenHomeAgent();
                                },
                              ));
                            },
                          );
                        }
                      },
                      child: Text(
                        " Update",
                        style: GoogleFonts.manrope(),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
