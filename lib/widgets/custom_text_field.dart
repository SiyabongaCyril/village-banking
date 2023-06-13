import 'package:flutter/material.dart';
import 'package:villagebanking/utilities/controllers.dart';
import 'package:villagebanking/widgets/custom_text.dart';
import 'package:email_validator/email_validator.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool obscurePassword = true;

  @override
  void initState() {
    AppControllers.passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    AppControllers.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Password",
          fontSize: 14,
          color: Color(0xFFB9B9B9),
          fontWeight: FontWeight.normal,
        ),
        const SizedBox(height: 13),
        TextField(
          controller: AppControllers.passwordController,
          autocorrect: false,
          obscureText: obscurePassword,
          decoration: InputDecoration(
            suffixIcon: obscurePassword
                ? IconButton(
                    onPressed: () {
                      setState(
                        () {
                          obscurePassword = false;
                        },
                      );
                    },
                    icon: const Icon(Icons.visibility_off))
                : IconButton(
                    onPressed: () {
                      setState(
                        () {
                          obscurePassword = true;
                        },
                      );
                    },
                    icon: const Icon(Icons.visibility),
                  ),
            hintText: "Enter password",
            hintStyle: const TextStyle(fontSize: 14),
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
  void initState() {
    AppControllers.emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    AppControllers.emailController.dispose();
    super.dispose();
  }

  void checkEMail() {
    setState(() {
      isEmailValid = EmailValidator.validate(
          AppControllers.emailController.text, true, true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Email address",
          fontSize: 14,
          color: Color(0xFFB9B9B9),
          fontWeight: FontWeight.normal,
        ),
        const SizedBox(height: 16),
        TextField(
          keyboardType: TextInputType.emailAddress,
          enableSuggestions: true,
          controller: AppControllers.emailController,
          onChanged: (checkEmailValidity) => checkEMail(),
          decoration: InputDecoration(
              hintText: "Enter email",
              hintStyle: const TextStyle(fontSize: 14),
              suffixIcon:
                  isEmailValid ? const Icon(Icons.check) : const SizedBox()),
        ),
      ],
    );
  }
}
