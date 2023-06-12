import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:villagebanking/utilities/dimension_methods.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:villagebanking/utilities/navigators.dart';
import 'package:villagebanking/widgets/custom_buttons.dart';
import 'package:villagebanking/widgets/custom_text.dart';

enum VerificationType { phoneNumber, otpCode }

class Verify extends StatelessWidget {
  final VerificationType verificationType;
  const Verify({super.key, required this.verificationType});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
              left: proportionalWidth(screenWidth, 30),
              top: proportionalHeight(screenHeight, 0),
              right: proportionalWidth(screenWidth, 30),
              bottom: proportionalHeight(screenHeight, 64)),
          child: Column(children: [
            const Spacer(),
            SvgPicture.asset(
              "assets/handheld_phone.svg",
              width: proportionalWidth(screenWidth, 203),
              height: proportionalHeight(screenHeight, 213),
            ),
            const Spacer(),
            CustomText(
              text: "OTP Verification",
              fontSize: proportionalHeight(screenHeight, 24),
            ),
            SizedBox(
              height: proportionalHeight(screenHeight, 30),
            ),
            Text(
              verificationType == VerificationType.phoneNumber
                  ? "We will send you a one-time\npassword to this mobile number"
                  : "Enter the OTP sent to +254 770 002 231",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: proportionalHeight(screenHeight, 16),
              ),
            ),
            SizedBox(
              height: proportionalHeight(screenHeight, 34),
            ),
            CustomText(
              text: verificationType == VerificationType.phoneNumber
                  ? "Enter Mobile number"
                  : "",
              fontSize: proportionalHeight(screenHeight, 14),
              color: const Color(0xFFB9B9B9),
              fontWeight: FontWeight.normal,
            ),
            SizedBox(
              height: proportionalHeight(screenHeight, 19),
            ),
            verificationType == VerificationType.phoneNumber
                ? SizedBox(
                    width: proportionalWidth(screenWidth, 236),
                    child: IntlPhoneField(
                      countries: const [
                        'ZA', // South Africa
                        'KE', // Kenya
                        'NG', // Nigeria
                        'TZ', // Tanzania
                        'ZM', // Zambia
                        // Add more country ISO codes here
                      ],
                      textAlign: TextAlign.center,
                      dropdownIcon: const Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Color(0xFF2B47FC),
                      ),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      initialCountryCode: "IN",
                      // onChanged: (phone) {
                      //   print(phone.completeNumber);
                      // },
                    ),
                  )
                : SizedBox(
                    width: proportionalWidth(screenWidth, 144),
                    child: const TextField(),
                  ),
            SizedBox(
              height: proportionalHeight(screenHeight, 76),
            ),
            CustomFilledButton(
              onPressed: verificationType == VerificationType.phoneNumber
                  ? () => navigatePushNamedAndRemoveUntil(context, verifyOtp)
                  : () {},
              text: verificationType == VerificationType.phoneNumber
                  ? "Get OTP "
                  : "Verify",
            )
          ]),
        ),
      ),
    );
  }
}
