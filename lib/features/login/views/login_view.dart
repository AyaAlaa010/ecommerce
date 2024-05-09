import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/config/app_constants/constants.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(

          children: [
            Image.asset("assets/images/route_logo_registration.png",width: Constants.mediaQuery.width,height: Constants.mediaQuery.height*0.2,),

          ],
        
        
        ),
      ),



    );
  }
}
