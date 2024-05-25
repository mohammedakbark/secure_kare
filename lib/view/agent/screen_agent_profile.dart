// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/view/agent/screen_homeagent.dart';
import 'package:secure_kare/viewmodel/function_provider.dart';

class ScreenAgentProfile extends StatelessWidget {
  ScreenAgentProfile({super.key});


  final CollectionReference agent =
      FirebaseFirestore.instance.collection("AGENT");

  @override
  Widget build(BuildContext context) {
    final funprovider = Provider.of<FunProvider>(context);

    return FutureBuilder(
      future: funprovider.fetchCurrentagentData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenHomeAgent();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.arrow_circle_left,
                  color: Colors.black,
                )),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Profile",
              style: GoogleFonts.overpass(color: Colors.black),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 100, top: 80),
            child: Column(
              children: [
                SizedBox(
                    width: 150,
                    child: funprovider.agentimage! == ""
                        ? const Icon(
                            CupertinoIcons.person_alt_circle,
                            size: 100,
                          )
                        : SizedBox(
                            height: 130,
                            child: Image.network(
                              funprovider.agentimage!,
                            ),
                          )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 470,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Agency Name",
                            style: GoogleFonts.hind(
                                color: const Color.fromARGB(255, 37, 55, 160),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(funprovider.agentname!),
                          Text(
                            "Address",
                            style: GoogleFonts.hind(
                                color: const Color.fromARGB(255, 37, 55, 160),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(funprovider.agentaddress!),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Contact Number",
                            style: GoogleFonts.hind(
                                color: const Color.fromARGB(255, 37, 55, 160),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(funprovider.agentcntctctnumber!),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "State",
                            style: GoogleFonts.hind(
                                color: const Color.fromARGB(255, 37, 55, 160),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(funprovider.agentstate!),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "City",
                            style: GoogleFonts.hind(
                                color: const Color.fromARGB(255, 37, 55, 160),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(funprovider.agentcity!),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Email ID",
                            style: GoogleFonts.hind(
                                color: const Color.fromARGB(255, 37, 55, 160),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(funprovider.agentemail!),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Password",
                            style: GoogleFonts.hind(
                                color: const Color.fromARGB(255, 37, 55, 160),
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(funprovider.agentpassword!),
                          const SizedBox(
                            height: 10,
                          ),
                        ]),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
