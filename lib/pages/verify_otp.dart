import 'package:flutter/material.dart';
import 'package:villagebanking/pages/custom_verification_page.dart';

class VerifyOTP extends StatelessWidget {
  const VerifyOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return const Verify(
      verificationType: VerificationType.otpCode,
    );
  }
}
