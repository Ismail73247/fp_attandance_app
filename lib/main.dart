import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fp_attandance_app/screens/home_screen/homeScreen.dart';
import 'package:fp_attandance_app/screens/loginScreen/loginScreen.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Attendance App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

