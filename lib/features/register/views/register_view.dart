import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/config/app_constants/constants.dart';
import '../../../core/widgets/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


    body:SingleChildScrollView(
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
                  height: Constants.mediaQuery.height * 0.25,
                )),

            Text(
              "Full Name",
              style: Constants.theme.textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextField(
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
            const CustomTextField(
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
            const CustomTextField(
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
            const CustomTextField(
              hint: "enter your password",
              isPassword: true,
              maxLines: 1,
            ),

            const SizedBox(
              height: 35,
            ),
            MaterialButton(
                onPressed: () {},
                padding: const EdgeInsets.all(15),
                shape: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                color: Colors.white,
                child: Text(
                  "Sign up",
                  style: Constants.theme.textTheme.titleSmall,
                )),

          ],
        ),
      ),
    ))
    ;
  }
}
