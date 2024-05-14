import 'package:animate_do/animate_do.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:ecommerce/core/config/routes/pages_route_name.dart';
import 'package:ecommerce/core/extentions/padding_extentions.dart';
import 'package:ecommerce/core/widgets/border_rounded_button.dart';
import 'package:ecommerce/core/widgets/custom_text_field.dart';
import 'package:ecommerce/features/login/manager/login_cubit.dart';
import 'package:ecommerce/features/login/manager/login_states.dart';
import 'package:ecommerce/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../../core/config/app_constants/constants.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var  formKey=GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  
  LoginCubit loginCubit=LoginCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit,LoginStates>(bloc: loginCubit,builder: (context,state){
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
                  FadeInUp(
                    delay: const Duration(milliseconds: 100),
                    child: Image.asset(
                      "assets/images/route_logo_registration.png",
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 200),
                    child: Text(
                      "Welcome Back To Route",
                      style: Constants.theme.textTheme.titleMedium,
                    ),
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 300),
                    child: Text(
                      "Please sign in with your mail",
                      style: Constants.theme.textTheme.bodySmall!,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds:400 ),
                    child: Text(
                      "E-mail",
                      style: Constants.theme.textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomTextField(controller: emailController ,maxLines: 1,
                    hint: "enter your E-mail",keyboardType: TextInputType.emailAddress,
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
                  FadeInRight(
                    delay: const Duration(milliseconds: 500),
                    child: Text(
                      "Password",
                      style: Constants.theme.textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    controller: passwordController,
                    hint: "enter your password",
                    isPassword: true,
                    keyboardType: TextInputType.text,
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
                  FadeInRight(
                    delay: const Duration(milliseconds:600 ),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot password",
                          style: Constants.theme.textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.w400),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds:700 ),
                    child: BorderRoundedButton(
                      title: "Login",
                      textStyle: Constants.theme.textTheme.titleSmall,
                      onPressed: () {
                        EasyLoading.show();
                        if(formKey.currentState!.validate()){
                          loginCubit.login(emailController.text.toString(), passwordController.text.toString()).then((value) {
                            if(value){
                              print("done");
                               EasyLoading.dismiss();
                            }
                            else{
                              EasyLoading.dismiss();
                              print("errorrrrrrrrrrrrrrrrrr");
                            }
                          });
                        }

                      },
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FadeInRight(
                    delay: const Duration(milliseconds: 800),
                    child: InkWell(
                      onTap: () {
                        navigatorKey.currentState!
                            .pushNamed(PagesRouteName.registerView);
                      },
                      child: TextButton(
                        onPressed: (){
                          navigatorKey.currentState!.pushNamed(PagesRouteName.registerView);
                        },
                        child: Text(
                          "Don’t have an account? Create Account",
                          style: Constants.theme.textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ],
              ).setHorizontalPadding(0.05),
            ),
          ),
        ),
      ),
    );
    });
  }
}
