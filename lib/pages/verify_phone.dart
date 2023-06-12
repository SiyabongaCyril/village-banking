import 'package:flutter/material.dart';
import 'package:villagebanking/pages/custom_verification_page.dart';

class VerifyPhone extends StatelessWidget {
  const VerifyPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return const Verify(
      verificationType: VerificationType.phoneNumber,
    );
  }
}
