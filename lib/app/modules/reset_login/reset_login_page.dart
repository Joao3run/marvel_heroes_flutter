import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/register/register_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/reset_login/reset_login_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/components/custom_button.dart';
import 'package:marvel_heroes_flutter/app/shared/components/horizontal_orline.dart';
import 'package:marvel_heroes_flutter/app/shared/components/login_signup_container.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class ResetLoginPage extends StatefulWidget {
  @override
  _ResetLoginPageState createState() => _ResetLoginPageState();
}

class _ResetLoginPageState
    extends ModularState<ResetLoginPage, ResetLoginController> {
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
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: CustomButton(
                  text: 'Send Request',
                  onPressed: controller.submit,
                  backgroundColor: AppColors.PRIMARY_COLOR,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: CustomButton(
                  text: 'Back',
                  onPressed: controller.redirectToLogin,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
