import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/view/police/screen_complaints.dart';
import 'package:secure_kare/view/police/screen_readclosedcomplaints.dart';
import 'package:secure_kare/viewmodel/ui_work_provider.dart';

class ScreenClosedComplaints extends StatelessWidget {
  const ScreenClosedComplaints({super.key});

  @override
  Widget build(BuildContext context) {
    final workprovider = Provider.of<WorkProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) {
                  return ScreenComplaints();
                },
              ));
            },
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Closed Complaints",
          style: GoogleFonts.quicksand(
              color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.error,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(workprovider.person),
                  ),
                  title: Text("Suhail Ibraheem", style: GoogleFonts.alata()),
                  subtitle: Text(
                    "This case was closed",
                    style: GoogleFonts.nunitoSans(),
                  ),
                  trailing: SizedBox(
                    height: 30,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.indigo,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => ScreenReadClosedComplaints(),
                          ));
                        },
                        child: Text(
                          "Read",
                          style: GoogleFonts.amaranth(color: Colors.white),
                        )),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
