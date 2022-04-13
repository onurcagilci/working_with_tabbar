// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "hello": "Hello",
  "dashboard": "Main Screen",
  "createAccount": "Create Account",
  "signUpInfo": "You need to register to login to system.",
  "loginReWelcome": "Welcome Again",
  "password": "Password",
  "rePassword": "Password Again",
  "loginInfo": "Enter your email and password that registered in the system to log in.",
  "rememberMe": "Remember Me",
  "forgotPassword": "I forgot my password",
  "login": "Log In",
  "register": "Register",
  "noAccountInfo": "Don't have an account?",
  "emailPlaceholder": "Your Email Adress",
  "email": "Email",
  "beforeOnboard": "Previous",
  "afterOnboard": "Next",
  "onBoardingMainTitle1": "Be Aware of Your Competitors",
  "onBoardingMainTitle2": "Speed Up Your Speed",
  "onBoardingMainTitle3": "Instant Cost Calculation",
  "onBoardingText1": "Get instant notification when your product loses its BUYBOX ranking.",
  "onBoardingText2": "The system will update the product price to protect your profit margin without your intervention.",
  "onBoardingText3": "Let us calculate how much profit you have for each product before you calculate it each time."
};
static const Map<String,dynamic> tr = {
  "hello": "Merhaba",
  "dashboard": "Ana sayfa",
  "createAccount": "Hesap Oluştur",
  "signUpInfo": "Sisteme giriş yapabilmeniz için kayıt olmanız gerekmektedir.",
  "loginReWelcome": "Tekrar Hoşgeldin",
  "password": "Şifre",
  "rePassword": "Şifre Tekrar",
  "loginInfo": "Giriş yapabilmeniz için sisteme kayıtlı email adresinizi ve şifrenizi giriniz.",
  "rememberMe": "Beni Hatırla",
  "forgotPassword": "Şifremi Unuttum",
  "login": "Giriş Yap",
  "register": "Kayıt Ol",
  "noAccountInfo": "Hesabınız yok mu?",
  "emailPlaceholder": "Email adresiniz",
  "email": "Email",
  "beforeOnboard": "Önceki",
  "afterOnboard": "Sonraki",
  "onBoardignMainTitle1": "Rakiplerinizden Haberdar Olun",
  "onBoardignMainTitle2": "Hızınıza Hız Katın",
  "onBoardignMainTitle3": "Anında Maliyet Hesaplama",
  "onBoardingText1": "Ürününüz Buybox sıralamasını  kaybettiğinde anında bildirim alın",
  "onBoardingText2": "Siz müdahale etmeden kâr marjınızı koruyacak şekilde sistem ürün fiyatınızı güncellesin",
  "onBoardingText3": "Her ürün için ne kadar kârınızın olduğunu her seferinde siz hesaplamadan biz hesaplayalım."
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "tr": tr};
}
