import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:nfssoftmobil/translations/codegen_loader.g.dart';

import 'bloc/splash_view/splashviewcubit_cubit.dart';
import 'core/app/constant/constants.dart';
import 'core/app/theme.dart';
import 'core/init/locator/locator.dart';
import 'core/router/app_router.dart';
import 'package:nfssoftmobil/translations/locale_keys.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales: const [
        Locale('tr'),
        Locale('en'),
      ],
      fallbackLocale: const Locale('tr'),
      useOnlyLangCode: true,
      saveLocale: false,
      assetLoader: const CodegenLoader(),
      path: 'assets/translations/'));
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.threeBounce
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = kPrimaryColor
    ..backgroundColor = kLightPrimaryColor
    ..indicatorColor = kPrimaryColor
    ..textColor = Colors.black
    ..maskColor = Colors.white
    ..userInteractions = true
    ..dismissOnTap = false
    ..maskType = EasyLoadingMaskType.black
    ..toastPosition = EasyLoadingToastPosition.center
    ..animationStyle = EasyLoadingAnimationStyle.scale;
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<SplashViewCubit>(create: (context) => SplashViewCubit()),
        ],
        child: MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            builder: EasyLoading.init(),
            debugShowCheckedModeBanner: false,
            title: 'NFS Soft Mobil Uygulaması',
            theme: theme(),
            onGenerateRoute: appRouter.onGenerateRoute));
  }
}
