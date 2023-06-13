import 'package:flutter/material.dart';
import 'package:villagebanking/utilities/controllers.dart';
import 'package:villagebanking/utilities/dimension_methods.dart';
import 'package:villagebanking/widgets/custom_buttons.dart';
import 'package:villagebanking/widgets/custom_text.dart';
import 'package:villagebanking/widgets/custom_text_field.dart';

enum Signing { signIn, signUp }

class SigningPage extends StatefulWidget {
  final Signing signingType;
  final void Function() onPressed;
  const SigningPage(
      {super.key, required this.signingType, required this.onPressed});

  @override
  State<SigningPage> createState() => _SigningPageState();
}

class _SigningPageState extends State<SigningPage> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    //AuthService authProvider = AuthService.firebase();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: proportionalWidth(screenWidth, 30),
            right: proportionalWidth(screenWidth, 30),
            top: proportionalHeight(screenHeight, 0),
            bottom: proportionalHeight(screenHeight, 64),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Center(
                child: Text(
                  "Your path to\nawesome banking",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: proportionalHeight(screenHeight, 28),
                  ),
                ),
              ),
              const Spacer(),
              CustomText(
                text: widget.signingType == Signing.signIn
                    ? "Sign In"
                    : "Sign Up",
                fontSize: proportionalHeight(screenHeight, 28),
                color: const Color(0xFF3A3A3A),
              ),
              SizedBox(
                height: proportionalHeight(screenHeight, 27),
              ),
              const EmailTextField(),
              SizedBox(
                height: proportionalHeight(screenHeight, 28),
              ),
              const PasswordTextField(),
              SizedBox(
                height: proportionalHeight(screenHeight, 24),
              ),
              TextButton(
                onPressed: () {},
                child: CustomText(
                    text: "Forgot Password",
                    fontSize: proportionalHeight(screenHeight, 16),
                    color: const Color(0xFF2B47FC),
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: proportionalHeight(screenHeight, 40),
              ),
              CustomElevatedButton(
                text: widget.signingType == Signing.signIn
                    ? "Sign in"
                    : "Sign up",
                onPressed: widget.onPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
