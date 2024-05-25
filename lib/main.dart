import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secure_kare/screen_splash.dart';
import 'package:secure_kare/view/admin/admin_home.dart';

import 'package:secure_kare/viewmodel/admin_controller.dart';
import 'package:secure_kare/viewmodel/agent_controller.dart';

import 'package:secure_kare/viewmodel/function_provider.dart';
import 'package:secure_kare/viewmodel/ui_work_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // name: "secure_kare",
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<WorkProvider>(
            create: (context) {
              return WorkProvider();
            },
          ),
          ChangeNotifierProvider<FunProvider>(
            create: (context) {
              return FunProvider();
            },
          ),
          ChangeNotifierProvider<AdminController>(
            create: (context) {
              return AdminController();
            },
          ),
           ChangeNotifierProvider<AgentController>(
            create: (context) {
              return AgentController();
            },
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Color.fromARGB(255, 255, 255, 255)),
              // primarySwatch: Colors.blue,
            ),
            home: kIsWeb ? AdminHome() : ScreenSplash()));
  }
}
