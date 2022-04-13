import 'package:flutter/material.dart';
import 'package:nfssoftmobil/views/home/view/home_view.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 3000,
      textType: TextType.NormalText,
      textStyle: const TextStyle(
        fontSize: 30.0,
      ),
      imageSrc: 'assets/images/logo-2.png',
      imageSize: 50,
      navigateRoute: HomeView(),
    );
  }
}
