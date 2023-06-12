import 'package:flutter/material.dart';
import 'package:villagebanking/pages/custom_sign_page.dart';
import 'package:villagebanking/utilities/navigators.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return SigningPage(
      signingType: Signing.signIn,
      onPressed: () {
        navigateAndPushNamed(context, verifyPhone);
      },
    );
  }
}