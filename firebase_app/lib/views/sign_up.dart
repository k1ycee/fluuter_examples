import 'package:firebase_app/theme/app_theme.dart';
import 'package:firebase_app/views/widgets/button.dart';
import 'package:firebase_app/views/widgets/input_field.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme.backgroundColor,
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Text(
                'SIgn Up',
                style: darkTheme.textTheme.headline1.copyWith(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: InputField(
                inputStyle: darkTheme.textTheme.headline3,
                hintStyle: darkTheme.textTheme.headline3,
                hint: "Username",
                enabledBorderColor: darkTheme.primaryColor,
                focusedBorderColor: darkTheme.primaryColor,
                obscure: false,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: InputField(
                inputStyle: darkTheme.textTheme.headline3,
                hintStyle: darkTheme.textTheme.headline3,
                hint: "E-mail",
                enabledBorderColor: darkTheme.primaryColor,
                focusedBorderColor: darkTheme.primaryColor,
                obscure: false,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: InputField(
                inputStyle: darkTheme.textTheme.headline3,
                hintStyle: darkTheme.textTheme.headline3,
                hint: "Password",
                enabledBorderColor: darkTheme.primaryColor,
                focusedBorderColor: darkTheme.primaryColor,
                obscure: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: AuthButton(
                    onPressed: () {},
                    title: 'SignUp',
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
