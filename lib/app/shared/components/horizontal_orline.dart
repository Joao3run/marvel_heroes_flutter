import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HorizontalOrLine extends StatelessWidget {
  final String label;
  final double height;
  final Color colorLine;

  const HorizontalOrLine({
    required this.label,
    required this.height,
    required this.colorLine,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: new Container(
          margin: const EdgeInsets.only(right: 15.0),
          child: Divider(
            color: colorLine,
            height: height,
          ),
        ),
      ),
      Text(label),
      Expanded(
        child: new Container(
          margin: const EdgeInsets.only(left: 15.0),
          child: Divider(
            color: colorLine,
            height: height,
          ),
        ),
      ),
    ]);
  }
}
