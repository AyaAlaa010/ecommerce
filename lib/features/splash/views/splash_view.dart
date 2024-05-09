import 'package:flutter/cupertino.dart';

import '../../../core/config/routes/pages_route_name.dart';
import '../../../main.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration( seconds: 2),
            ()=>navigatorKey.currentState!.pushReplacementNamed(PagesRouteName.loginView));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child:  Image.asset("assets/images/splash_screen.png",fit: BoxFit.cover,)
    );
  }
}
