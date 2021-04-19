import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final Function onPressed;

  const CustomButton(
      {Key? key,
        required this.text,
        required this.onPressed,
        required this.backgroundColor,
        required this.foregroundColor,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(backgroundColor),
        foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
      ),
      onPressed: () => onPressed(),
      child: Text(
        text,
      ),
    );
  }
}
