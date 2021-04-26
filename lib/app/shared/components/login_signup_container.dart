import 'package:flutter/material.dart';
import 'package:marvel_heroes_flutter/app/shared/components/wave_clipper_two_reverse.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class LoginSignupContainer extends StatelessWidget {
  final Widget child;

  const LoginSignupContainer({Key? key, required this.child}) : super(key: key);

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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    left: 20,
                    right: 20,
                  ),
                  child: Image.asset(
                    "assets/img/marvel_heroes_colored.png",
                  ),
                ),
              ),
              ClipPath(
                child: Container(
                    height: size.height - size.height / 4,
                    color: Colors.black,
                    child: child),
                clipper: WaveClipperTwoReverse(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
