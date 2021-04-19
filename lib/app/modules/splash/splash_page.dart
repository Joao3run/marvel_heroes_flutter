import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class SplashPage extends StatelessWidget {
  SplashPage() {
    Timer(Duration(seconds: 2), () {
      Modular.to.pushReplacementNamed("/login");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.PRIMARY_COLOR,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/img/marvel.svg",
          ),
          Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),),
          ),
        ],
      ),
    );
  }
}
