import 'package:flutter/material.dart';
import 'package:villagebanking/pages/home.dart';
import 'package:villagebanking/pages/sign_in.dart';

void main() {
  runApp(const VillageApp());
}

class VillageApp extends StatelessWidget {
  const VillageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
      routes: {'/signin/': (context) => const SignUp()},
    );
  }
}
