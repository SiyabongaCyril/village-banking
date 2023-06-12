import 'package:flutter/material.dart';
import 'package:villagebanking/utilities/dimension_methods.dart';
import 'package:villagebanking/widgets/custom_text.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Password",
          fontSize: proportionalHeight(screenHeight, 14),
          color: const Color(0xFFB9B9B9),
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: proportionalHeight(screenHeight, 13),
        ),
        TextField(
          obscureText: obscurePassword,
          decoration: InputDecoration(
            suffixIcon: obscurePassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscurePassword = false;
                      });
                    },
                    icon: const Icon(Icons.visibility_off))
                : IconButton(
                    onPressed: () {
                      setState(() {
                        obscurePassword = true;
                      });
                    },
                    icon: const Icon(Icons.visibility)),
            hintText: "Enter password",
            hintStyle: TextStyle(
              fontSize: proportionalHeight(screenHeight, 14),
            ),
          ),
        ),
      ],
    );
  }
}

class EmailTextField extends StatefulWidget {
  const EmailTextField({super.key});

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Email address",
          fontSize: proportionalHeight(screenHeight, 14),
          color: const Color(0xFFB9B9B9),
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: proportionalHeight(screenHeight, 16),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter email",
            hintStyle: TextStyle(
              fontSize: proportionalHeight(screenHeight, 16),
            ),
            suffixIcon:
                isEmailValid ? const Icon(Icons.check) : const SizedBox(),
          ),
        ),
      ],
    );
  }
}
