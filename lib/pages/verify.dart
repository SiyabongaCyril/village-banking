import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:villagebanking/utilities/navigators.dart';
import 'package:villagebanking/widgets/custom_buttons.dart';
import 'package:villagebanking/widgets/custom_text.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding:
              const EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 64),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            IconButton(
                onPressed: () => navigatePop(context),
                icon: const Icon(Icons.arrow_back)),
            Center(
                child: Image.asset("assets/handheld_phone.png",
                    height: 213, width: 203)),
            const Spacer(),
            Center(
              child: Column(children: [
                const CustomText(text: "OTP Verification", fontSize: 24),
                const SizedBox(height: 30),
                const CustomText(
                    fontWeight: FontWeight.normal,
                    text:
                        "We will send you a one-time\npassword to this mobile number",
                    fontSize: 16),
                const SizedBox(
                  height: 34,
                ),
                const CustomText(
                    text: "Enter Mobile number",
                    fontSize: 14,
                    color: Color(0xFFB9B9B9),
                    fontWeight: FontWeight.normal),
                const SizedBox(height: 19),
                SizedBox(
                  width: 236,
                  child: IntlPhoneField(
                    countries: const [
                      'ZA', // South Africa
                      'KE', // Kenya
                      'NG', // Nigeria
                      'TZ', // Tanzania
                      'ZM', // Zambia
                      // Add more country ISO codes here
                    ],
                    decoration: const InputDecoration(),
                    textAlign: TextAlign.center,
                    dropdownIcon: const Icon(Icons.arrow_drop_down_rounded,
                        color: Color(0xFF2B47FC)),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    initialCountryCode: "IN",
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                  // child: TextField(
                  //   style: TextStyle(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  //   autocorrect: false,
                  //   textAlignVertical: TextAlignVertical.bottom,
                  //   textAlign: TextAlign.center,
                  //   keyboardType: TextInputType.number,
                  // ),
                ),
                const SizedBox(
                  height: 76,
                ),
                CustomFilledButton(onPressed: () {}, text: "Get OTP"),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}
