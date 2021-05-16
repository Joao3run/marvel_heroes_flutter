import 'package:flutter/material.dart';

class EventCardComponent extends StatelessWidget {
  final dynamic event;

  EventCardComponent({required this.event});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Flexible(
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  event.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
