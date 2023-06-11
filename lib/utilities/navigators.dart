import 'package:flutter/material.dart';

const signin = "/signin/";
const signup = "/signup/";
const verify = "/verify";

void navigateAndPushNamed(BuildContext context, final route) {
  Navigator.of(context).pushNamed(route);
}

void navigatePushNamedAndRemoveUntil(BuildContext context, final route) {
  Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
}

void navigatePop(BuildContext context) {
  Navigator.of(context).pop();
}
