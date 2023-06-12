import 'package:flutter/material.dart';
import 'package:villagebanking/utilities/dimension_methods.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            left: proportionalWidth(screenWidth, 30),
            right: proportionalWidth(screenWidth, 30),
            top: proportionalHeight(screenHeight, 137),
            bottom: proportionalHeight(screenHeight, 64),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: "Welcome",
                  fontSize: proportionalHeight(screenHeight, 28),
                  color: Colors.black),
              const Spacer(),
              CustomElevatedButton(
                text: "Sign in",
                onPressed: () => navigateAndPushNamed(context, signin),
              ),
              SizedBox(
                height: proportionalHeight(screenHeight, 16),
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
