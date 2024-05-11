import 'package:ecommerce/core/extentions/padding_extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/config/app_constants/constants.dart';
import '../../../core/widgets/border_rounded_button.dart';
import '../../../core/widgets/custom_text_field.dart';

class RegisterView extends StatefulWidget {


  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var mobileController=TextEditingController();
  var formKey=GlobalKey<FormState>();


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
                Text(
                  "Full Name",
                  style: Constants.theme.textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                 CustomTextField(
                  controller: nameController,
                  onValidate: (value){
                    if(value==null||value.trim().isEmpty){
      
                      return "please enter your Name";
                    }
                    return null;
                  },
                  hint: "enter your full name",
      
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Mobile Number",
                  style: Constants.theme.textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                 CustomTextField(
                  controller: mobileController,
                  onValidate: (value){
                    if(value==null||value.trim().isEmpty){
      
                      return "please enter your Mobile Number";
                    }
                    return null;
                  },
                  hint: "enter your mobile no.",
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "E-mail address",
                  style: Constants.theme.textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                 CustomTextField(
                  controller: emailController,
                  onValidate: (value){
                    if(value==null||value.trim().isEmpty){
      
                      return "please enter your E-mail";
                    }
                    return null;
                  },
                  hint: "enter your email address",
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
                  controller: passwordController,
                  onValidate: (value){
                    if(value==null||value.trim().isEmpty){
                      return "please enter your Password";
                    }
                    return null;
                  },
                  hint: "enter your password",
                  isPassword: true,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 35,
                ),
                BorderRoundedButton(
                  title: "Sign up",
                  textStyle: Constants.theme.textTheme.titleSmall,
                  onPressed: () {
                    if(formKey.currentState!.validate()){
                      print("done");
                    }
                  },
                ),
              ],
            ).setHorizontalPadding(0.05),
          ),
        ),
      )),
    );
  }
}
