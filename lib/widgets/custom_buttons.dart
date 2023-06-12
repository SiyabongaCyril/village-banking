import 'package:flutter/material.dart';
import 'package:villagebanking/utilities/dimension_methods.dart';
import 'package:villagebanking/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final bool isOutlined;
  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isOutlined = false});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: proportionalWidth(screenWidth, 318),
      height: proportionalHeight(screenHeight, 72),
      decoration: isOutlined
          ? BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(28)),
              border: Border.all(color: const Color(0xFF2B47FC)))
          : BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF1041F9).withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset:
                      const Offset(5, 5), // changes the shadow direction (x,y)
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(28)),
              gradient: const LinearGradient(colors: [
                Color(0xFFE26C5C),
                Color(0xFF1041F9),
              ]),
            ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            CustomText(
              text: text,
              fontSize: proportionalHeight(screenHeight, 20),
              color: isOutlined ? const Color(0xFF2B47FC) : Colors.white,
            ),
            const Spacer(),
            Icon(
              Icons.arrow_forward,
              color: isOutlined ? const Color(0xFF2B47FC) : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class CustomFilledButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const CustomFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: proportionalWidth(screenWidth, 318),
      height: proportionalHeight(screenHeight, 72),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(28)),
        color: Color(0xFF2B47FC),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        onPressed: onPressed,
        child: CustomText(
          text: text,
          fontSize: proportionalHeight(screenHeight, 20),
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}
