import 'package:flutter/material.dart';
import 'package:villagebanking/utilities/navigators.dart';
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
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 0, bottom: 64),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => navigatePop(context),
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                const Text(
                  "Your path to\nawesome\nbanking",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(
                  height: 128,
                ),
                CustomText(
                  text: widget.signingType == Signing.signIn
                      ? "Sign In"
                      : "Sign Up",
                  fontSize: 28,
                  color: const Color(0xFF3A3A3A),
                ),
                const SizedBox(
                  height: 200,
                ),
                const EmailTextField(),
                const SizedBox(height: 28),
                const PasswordTextField(),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {},
                  child: const CustomText(
                      text: "Forgot Password",
                      fontSize: 16,
                      color: Color(0xFF2B47FC),
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: 30),
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
      ),
    );
  }
}
