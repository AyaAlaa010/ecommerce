import 'package:ecommerce/core/config/routes/pages_route_name.dart';
import 'package:ecommerce/features/login/views/login_view.dart';
import 'package:ecommerce/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';


class Routes {
  static Route<dynamic> onGeneratedRouteSettings(RouteSettings settings) {

    switch (settings.name) {
      case PagesRouteName.splash:
        return MaterialPageRoute(
            builder: (context) => const SplashView(), settings: settings);
      case PagesRouteName.loginView:
        return MaterialPageRoute(
            builder: (context) => const LoginView(),settings: settings);

      default:
        return MaterialPageRoute(builder: (context) => const SplashView());
    }
  }
}
