import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:villagebanking/auth/village_app_auth.dart';
import 'package:villagebanking/pages/verify_otp.dart';
import 'package:villagebanking/pages/verify_phone.dart';
import 'package:villagebanking/pages/welcome.dart';
import 'package:villagebanking/pages/sign_in.dart';
import 'package:villagebanking/pages/sign_up.dart';
import 'package:villagebanking/utilities/navigators.dart';

void main() {
  //disable landscape
  WidgetsFlutterBinding.ensureInitialized();
  AppAuth.auth.initialise();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const VillageApp());
}

class VillageApp extends StatelessWidget {
  const VillageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.blue,
      ),
      home: const Welcome(),
      routes: {
        signin: (context) => const SignIn(),
        signup: (context) => const SignUp(),
        verifyOtp: (context) => const VerifyOTP(),
        verifyPhone: (context) => const VerifyPhone(),
      },
    );
  }
}
