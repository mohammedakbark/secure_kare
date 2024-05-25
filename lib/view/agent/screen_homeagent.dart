import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/viewmodel/ui_work_provider.dart';

class ScreenHomeAgent extends StatefulWidget {
  const ScreenHomeAgent({super.key});

  @override
  State<ScreenHomeAgent> createState() => _ScreenHomeAgentState();
}

class _ScreenHomeAgentState extends State<ScreenHomeAgent> {
  @override
  Widget build(BuildContext context) {
    final workprovider = Provider.of<WorkProvider>(context);
    return Scaffold(
      drawer: Padding(
          padding: const EdgeInsets.only(top: 90, bottom: 200, right: 170),
          child: workprovider.agentdrawer(context)),
      backgroundColor: Color.fromARGB(255, 206, 225, 204),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 206, 225, 204),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
        title: Text(
          "Work force kerela",
          style: GoogleFonts.nunitoSans(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
       
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(workprovider.construction1)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 500),
            child: Container(
              height: 200,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    workprovider.construction2,
                    fit: BoxFit.fitHeight,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 300),
            child: Container(
              height: 180,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    workprovider.construction3,
                    fit: BoxFit.fitHeight,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 210, top: 300),
            child: Container(
              height: 400,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    workprovider.construction4,
                    fit: BoxFit.fitHeight,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
