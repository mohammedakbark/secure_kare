import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/view/agent/screen_homeagent.dart';
import 'package:secure_kare/viewmodel/function_provider.dart';
import 'package:secure_kare/viewmodel/ui_work_provider.dart';

class ScreenAgentLogin extends StatelessWidget {
  const ScreenAgentLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final workprovider = Provider.of<WorkProvider>(context);
    final funprovider = Provider.of<FunProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(workprovider.loginphoto),
                Text(
                  "Login To Your Account",
                  style: GoogleFonts.sarabun(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: funprovider.Agentloginemail,
                  decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: GoogleFonts.sarabun(),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: funprovider.Agentloginpassword,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: GoogleFonts.sarabun(),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      funprovider.LoginwithAgent(context);
                    },
                    child: Text("Login"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
