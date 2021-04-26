import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/login/login_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/components/custom_button.dart';
import 'package:marvel_heroes_flutter/app/shared/components/horizontal_orline.dart';
import 'package:marvel_heroes_flutter/app/shared/components/login_signup_container.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return LoginSignupContainer(
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Observer(builder: (_) {
                return TextFormField(
                  onChanged: (value) => controller.changeEmail(value),
                  style: TextStyle(color: Colors.grey),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.check),
                      errorText: controller.error.email),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Observer(builder: (_) {
                return TextFormField(
                  onChanged: (value) => controller.changePassword(value),
                  cursorColor: Colors.white,
                  obscureText: isHiddenPassword,
                  decoration: InputDecoration(
                    errorText: controller.error.password,
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isHiddenPassword = !isHiddenPassword;
                        });
                      },
                      child: Icon(
                        Icons.visibility,
                      ),
                    ),
                  ),
                );
              }),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 20),
              child: Container(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    controller.redirectToForgotPassword();
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: AppColors.PRIMARY_COLOR,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  text: 'Log In',
                  onPressed: controller.submit,
                  backgroundColor: AppColors.PRIMARY_COLOR,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: HorizontalOrLine(
                height: 10,
                label: "OR",
                colorLine: Colors.white,
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  text: 'Sign Up',
                  onPressed: controller.redirectToSignUp,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      controller.signInWithGoogle();
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/img/google_logo.png',
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  InkWell(
                    highlightColor: Colors.red,
                    onTap: () {
                      print('Login Facebook');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        'assets/img/facebook.png',
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
