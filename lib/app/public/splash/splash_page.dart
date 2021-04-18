import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _createTitle(),
        _createBackground(),
        Container(
          color: Colors.black.withOpacity(0.5),
        )
      ],
    );
  }

  Widget _createTitle() {
    return Text('Marvel Heroes');
  }

  Widget _createBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        'assets/img/',
        fit: BoxFit.cover,
      ),
    );
  }
}
