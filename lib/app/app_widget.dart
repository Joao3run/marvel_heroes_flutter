import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/utils/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heroes Marvel',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.PRIMARY_COLOR,
      ),
      initialRoute: '/',
    ).modular();
  }
}
