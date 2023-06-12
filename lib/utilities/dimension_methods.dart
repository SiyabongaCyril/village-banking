import 'package:villagebanking/constants/dimesions.dart';

double proportionalHeight(double deviceHeight, double desiredHeight) {
  return deviceHeight * (desiredHeight / designScreenHeight);
}

double proportionalWidth(double deviceWidth, double desiredWidth) {
  return deviceWidth * (desiredWidth / designScreenWidth);
}
