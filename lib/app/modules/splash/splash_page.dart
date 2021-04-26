import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marvel_heroes_flutter/app/modules/splash/splash_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends ModularState<SplashPage, SplashController> {
  @override
  void initState() {
    controller.initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        color: AppColors.PRIMARY_COLOR,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/img/marvel.svg",
            ),
            if (!controller.initialized)
              Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                ),
              ),
          ],
        ),
      );
    });
  }
}
