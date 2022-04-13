import 'package:flutter/material.dart';
import 'package:nfssoftmobil/views/home/view/home_view.dart';
import 'package:nfssoftmobil/views/project_list/project_list.dart';
import 'package:nfssoftmobil/views/splash/view/splash_view.dart';


class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashView());
      case '/project_list':
        return MaterialPageRoute(builder: (_) => const ProjectList(),settings: settings);
      default:
        return MaterialPageRoute(builder: (_) => HomeView());
    }
  }
}
