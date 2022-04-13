import 'package:flutter/material.dart';
import 'package:nfssoftmobil/core/app/size_config.dart';


const baseUrl = "http://webtestapi.nesever.com.tr/api/";
const String projectDescription ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vehicula ante non augue blandit ultrices. Sed ultricies eros ac felis porttitor consequat vel nec sem. In ultrices, nibh nec sollicitudin efficitur, erat elit tincidunt erat, in fringilla metus orci quis dolor. Proin consequat non eros a interdum. Aliquam lobortis eget nulla at rhoncus. Nam gravida dictum nisi, a aliquam magna lobortis vel. Phasellus varius ac purus ut fringilla. Proin tincidunt odio eget lorem pharetra tristique in sed diam. Vivamus nec ornare dui, sed ultrices est. Proin scelerisque nunc eget mattis imperdiet. Suspendisse eu nibh rutrum mauris tempus malesuada eu et arcu. Etiam nunc sapien, condimentum non fringilla vel, lobortis in quam. Fusce a ex mauris. Fusce tristique elementum leo a blandit. Nam non ultrices quam, vitae vulputate nulla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Integer consequat aliquet scelerisque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque eget ultrices nulla, non pretium est. Sed et aliquet nisi. Nam eleifend ante eget porta pretium. In molestie nisi at turpis gravida imperdiet non eu massa. Sed et nunc feugiat, aliquet justo sit amet, eleifend enim. Vivamus et est sed erat malesuada vulputate. Duis non erat sit amet dolor vehicula mollis. Etiam quis vestibulum nisl, consectetur facilisis purus. Nulla eu faucibus eros, vitae consectetur neque. Donec sit amet massa eu ipsum elementum aliquam non eget enim. Aenean nulla turpis, laoreet vel facilisis id, euismod a tellus. Donec lacinia, lectus at condimentum suscipit, velit arcu sollicitudin eros, in vehicula nisl purus in quam. Vivamus vel dui a ligula volutpat posuere quis in diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean dolor metus, maximus vitae nunc vitae, facilisis sagittis magna.";
const String img1 ="assets/images/projectImg1.png";
const String img2 ="assets/images/projectImg2.png";
const String img3 ="assets/images/projectImg3.png";
const String img4 ="assets/images/projectImg4.png";
const kPrimaryColor = Color(0xFFFF7643);
const kLightPrimaryColor = Color(0xFFFFECDF);
const kBlueColor = Color(0xFF1A8CFF);
const kPinkColor = Color(0xFFF43960);
const kPurpleColor = Color(0xFF7c5ac2);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Lütfen email girin";
const String kInvalidEmailError = "Lütfen uygun bir email girin";
const String kPassNullError = "Lütfen şifre girin";
const String kShortPassError = "Şifre çok kısa";
const String kMatchPassError = "Şifreler uyuşmuyor";
const String kNamelNullError = "Lütfen İsim girin";
const String kPhoneNumberNullError = "Lütfen Telefon numarası girin";
const String kAddressNullError = "Lütfen Adres girin";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
