import 'package:flutter/material.dart';
import 'package:villagebanking/utilities/navigators.dart';
import 'package:villagebanking/widgets/custom_buttons.dart';
import 'package:villagebanking/widgets/custom_text.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 137, bottom: 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                  text: "Welcome", fontSize: 28, color: Colors.black),
              const Spacer(),
              CustomElevatedButton(
                  text: "Sign in",
                  onPressed: () => navigateAndPushNamed(context, signin)),
              const SizedBox(
                height: 16,
              ),
              CustomElevatedButton(
                text: "Sign up",
                onPressed: () => navigateAndPushNamed(context, signup),
                isOutlined: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
