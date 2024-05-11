import 'package:ecommerce/core/config/routes/pages_route_name.dart';
import 'package:ecommerce/core/widgets/custom_text_field.dart';
import 'package:ecommerce/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/config/app_constants/constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                  child: Image.asset(
                "assets/images/route_logo_registration.png",
                width: Constants.mediaQuery.width,
                height: Constants.mediaQuery.height * 0.3,
              )),
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
                "User Name",
                style: Constants.theme.textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomTextField(
                hint: "enter your name",
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
              const CustomTextField(
                hint: "enter your password",
                isPassword: true,
                maxLines: 1,
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
              MaterialButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(15),
                  shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  color: Colors.white,
                  child: Text(
                    "Login",
                    style: Constants.theme.textTheme.titleSmall,
                  )),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: (){
                  navigatorKey.currentState!.pushNamed(PagesRouteName.registerView);
                },
                child: Text(
                  "Don’t have an account? Create Account",
                  style: Constants.theme.textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
