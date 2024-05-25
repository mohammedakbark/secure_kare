import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/model/agentmodel.dart';
import 'package:secure_kare/view/agent/screen_homeagent.dart';
import 'package:secure_kare/viewmodel/function_provider.dart';
import 'package:secure_kare/viewmodel/ui_work_provider.dart';

class ScreenAgentAvailableManagers extends StatelessWidget {
  ScreenAgentAvailableManagers({super.key});
  final CollectionReference manager =
      FirebaseFirestore.instance.collection("MANAGER");
  @override
  Widget build(BuildContext context) {
    final workprovider = Provider.of<WorkProvider>(context);
    final funprovider = Provider.of<FunProvider>(context);
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          "Work force kerala",
          style: GoogleFonts.nunitoSans(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: manager.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(children: [
              FutureBuilder(
                future: funprovider.fetchCurrentagentData(),
                builder: (context, snapshot) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(funprovider.agentimage.toString()),
                    ),
                    title: Text(
                      funprovider.agentname.toString(),
                      style: GoogleFonts.andika(),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: 500,
                  height: 668,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [BoxShadow(blurRadius: 1)],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        " Managers",
                        style: GoogleFonts.balthazar(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            final DocumentSnapshot managersnap =
                                snapshot.data!.docs[index];

                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage(managersnap['managerimage']),
                              ),
                              title: Text(managersnap['managername'],
                                  style: GoogleFonts.alata()),
                              subtitle: Text(
                                managersnap['managerplace'],
                                style: GoogleFonts.libreFranklin(),
                              ),
                            );
                          },
                          itemCount: snapshot.data?.docs.length,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
