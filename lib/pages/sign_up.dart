import 'package:flutter/material.dart';
import 'package:villagebanking/auth/village_app_auth.dart';
import 'package:villagebanking/pages/custom_sign_page.dart';
import 'package:villagebanking/utilities/controllers.dart';
import 'package:villagebanking/utilities/navigators.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SigningPage(
      signingType: Signing.signUp,
      onPressed: () async {
        await AppAuth.auth.register(
          email: AppControllers.emailController.text,
          password: AppControllers.passwordController.text,
        );
      },
    );
  }
}
