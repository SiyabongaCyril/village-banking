import 'package:flutter/material.dart';
import 'package:villagebanking/pages/verify.dart';
import 'package:villagebanking/pages/welcome.dart';
import 'package:villagebanking/pages/sign_in.dart';
import 'package:villagebanking/pages/sign_up.dart';
import 'package:villagebanking/utilities/navigators.dart';

void main() {
  runApp(const VillageApp());
}

class VillageApp extends StatelessWidget {
  const VillageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat", primarySwatch: Colors.blue),
      home: const Welcome(),
      routes: {
        signin: (context) => const SignIn(),
        signup: (context) => const SignUp(),
        verify: (context) => const Verify(),
      },
    );
  }
}
