import 'package:bot_toast/bot_toast.dart';
import 'package:ecommerce/core/config/styles/application_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'core/config/routes/pages_route_name.dart';
import 'core/config/routes/routes.dart';
 GlobalKey<NavigatorState> navigatorKey= GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApplication());
}


class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ApplicationThemeManager.lightTheme,
     debugShowCheckedModeBanner: false,
      initialRoute: PagesRouteName.splash,
      onGenerateRoute: Routes.onGeneratedRouteSettings,
      navigatorKey: navigatorKey,
      builder: EasyLoading.init(builder: BotToastInit(),),

    );
  }
}

