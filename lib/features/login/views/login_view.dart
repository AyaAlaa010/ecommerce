import 'package:ecommerce/core/config/routes/pages_route_name.dart';
import 'package:ecommerce/core/extentions/padding_extentions.dart';
import 'package:ecommerce/core/widgets/border_rounded_button.dart';
import 'package:ecommerce/core/widgets/custom_text_field.dart';
import 'package:ecommerce/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/config/app_constants/constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var  formKey=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passowrdController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    "assets/images/route_logo_registration.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Welcome Back To Route",
                    style: Constants.theme.textTheme.titleMedium,
                  ),
                  Text(
                    "Please sign in with your mail",
                    style: Constants.theme.textTheme.bodySmall!,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "E-mail",
                    style: Constants.theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   CustomTextField(controller: emailController ,maxLines: 1,
                    hint: "enter your E-mail",
                     onValidate: (value){
                     if(value==null || value.trim().isEmpty){
                       return "please enter your E-mail";
      
                     }
                       return null;}
      
                     ,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password",
                    style: Constants.theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   CustomTextField(
                    controller: passowrdController,
                    hint: "enter your password",
                    isPassword: true,
                    maxLines: 1,
                     onValidate: (value){
                      if( value==null||value.trim().isEmpty){
                        return "enter your Password";
                      }
                        return null;
      
      
                     },
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password",
                        style: Constants.theme.textTheme.bodyLarge!
                            .copyWith(fontWeight: FontWeight.w400),
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  BorderRoundedButton(
                    title: "Login",
                    textStyle: Constants.theme.textTheme.titleSmall,
                    onPressed: () {
      
                      if(formKey.currentState!.validate()){
                        print("done");
                      }
      
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      navigatorKey.currentState!
                          .pushNamed(PagesRouteName.registerView);
                    },
                    child: Text(
                      "Don’t have an account? Create Account",
                      style: Constants.theme.textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ).setHorizontalPadding(0.05),
            ),
          ),
        ),
      ),
    );
  }
}
