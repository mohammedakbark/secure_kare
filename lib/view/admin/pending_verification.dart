import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/viewmodel/ui_work_provider.dart';

class ScreenPendingVerifications extends StatelessWidget {
  const ScreenPendingVerifications({super.key});

  @override
  Widget build(BuildContext context) {
    final workprovider = Provider.of<WorkProvider>(context);
    return ListView.separated(
      itemBuilder: (context, index) {
        return SizedBox(
          height: 300,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                        backgroundImage: AssetImage(workprovider.kanew)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "John Hernandez",
                    style: GoogleFonts.signikaNegative(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "John Hernandez ",
                    style: GoogleFonts.signikaNegative(
                        fontWeight: FontWeight.w800, fontSize: 18),
                  ),
                  Text(
                    "has registered as an employee to",
                    style: GoogleFonts.signikaNegative(),
                  ),
                  Text(
                    " WORK FORCE KERALA",
                    style: GoogleFonts.signikaNegative(
                        fontWeight: FontWeight.w800, fontSize: 16),
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 340, top: 20, bottom: 15),
                child: Text(
                  "Details",
                  style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.w800, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 60,
                          ),
                          Text(
                            "Name",
                            style:
                                GoogleFonts.inter(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ":",
                            style:
                                GoogleFonts.inter(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "John Hernandez",
                            style: GoogleFonts.inter(fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Text(
                    "Postion",
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Employee",
                    style: GoogleFonts.inter(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 60,
                          ),
                          Text(
                            "Department",
                            style:
                                GoogleFonts.inter(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ":",
                            style:
                                GoogleFonts.inter(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " Electrician",
                            style: GoogleFonts.inter(fontSize: 15),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  Text(
                    "Location",
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ":",
                    style: GoogleFonts.inter(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Calicut",
                    style: GoogleFonts.inter(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 150,
                  ),
                  SizedBox(
                    height: 30,
                    width: 130,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor:
                                const Color.fromARGB(255, 42, 56, 133)),
                        onPressed: () {},
                        child: Text("Accept",
                            style: GoogleFonts.tajawal(fontSize: 15))),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SizedBox(
                    height: 30,
                    width: 130,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor: Colors.red),
                        onPressed: () {},
                        child: Text("Reject",
                            style: GoogleFonts.tajawal(fontSize: 15))),
                  )
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          endIndent: 25,
          indent: 25,
          color: Colors.black,
        );
      },
      itemCount: 10,
    );
  }
}
