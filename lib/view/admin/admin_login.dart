import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:secure_kare/viewmodel/function_provider.dart';

class AdminLogin extends StatelessWidget {
  AdminLogin({super.key});
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    "Login as an admin",
                    style: GoogleFonts.signikaNegative(
                        fontWeight: FontWeight.w800, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter email";
                            } else {
                              return null;
                            }
                          },
                          controller: emailController,
                          decoration: InputDecoration(
                              hintText: "E-mail",
                              hintStyle: GoogleFonts.sourceSans3(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              prefixIcon: const Icon(
                                CupertinoIcons.mail_solid,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter password";
                            } else {
                              return null;
                            }
                          },
                          // initialValue: "knknkn",
                          controller: passwordController,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: GoogleFonts.sourceSans3(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              prefixIcon: const Icon(
                                Icons.lock_rounded,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        Row(
                          children: [
                            Text(
                              "Remember me",
                              style: GoogleFonts.sairaCondensed(
                                  color: Colors.black),
                            ),
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot password?',
                                  style: GoogleFonts.catamaran(
                                      color: const Color.fromARGB(
                                          255, 219, 46, 34)),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                          // width: 100,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 23, 40, 137)),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  FunProvider().checkadminemail(
                                      context,
                                      emailController.text,
                                      passwordController.text);
                                }
                              },
                              child: Text(
                                "LOGIN",
                                style: GoogleFonts.urbanist(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                        )
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                ],
              ),
            ),
          ),
          Image.asset("assets/adminlogin.jpeg")
        ],
      ),
    );
  }
}
