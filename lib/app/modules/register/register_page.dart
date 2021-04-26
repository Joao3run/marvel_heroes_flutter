import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/register/register_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/components/custom_button.dart';
import 'package:marvel_heroes_flutter/app/shared/components/horizontal_orline.dart';
import 'package:marvel_heroes_flutter/app/shared/components/login_signup_container.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  bool isHiddenPassword = true;
  bool isHiddenRepeatPassword = true;

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
                  onChanged: (value) => controller.changeName(value),
                  style: TextStyle(color: Colors.grey),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    errorText: controller.error.name,
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.account_circle_rounded),
                  ),
                );
              }),
            ),
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
              padding: const EdgeInsets.all(20.0),
              child: Observer(builder: (_) {
                return TextFormField(
                  onChanged: (value) => controller.changeRepeatPassword(value),
                  cursorColor: Colors.white,
                  obscureText: isHiddenRepeatPassword,
                  decoration: InputDecoration(
                    errorText: controller.error.repeatPassword,
                    hintText: 'Reapet Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isHiddenRepeatPassword = !isHiddenRepeatPassword;
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
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  text: 'Sign Up',
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
                  text: 'Log in',
                  onPressed: _backToLogin,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _backToLogin() {
    Modular.to.navigate('/login');
  }
}
