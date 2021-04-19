import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/components/custom_button.dart';
import 'package:marvel_heroes_flutter/app/shared/components/horizontal_orline.dart';
import 'package:marvel_heroes_flutter/app/shared/components/wave_clipper_two_reverse.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          color: AppColors.PRIMARY_COLOR,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipPath(
                child: Container(
                  height: size.height - size.height / 3,
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          style: TextStyle(color: Colors.grey),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            suffixIcon: Icon(Icons.check),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          cursorColor: Colors.white,
                          obscureText: isHiddenPassword,
                          decoration: InputDecoration(
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
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, right: 20),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              print('Forgot password');
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
                            text: 'Login in',
                            onPressed: _onPressed,
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
                            text: 'Sign up',
                            onPressed: _onPressed,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: WaveClipperTwoReverse(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onPressed() {
    Modular.to.pushReplacementNamed('/');
  }
}
