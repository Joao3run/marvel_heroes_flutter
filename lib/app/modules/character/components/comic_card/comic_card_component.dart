import 'package:flutter/material.dart';

class ComicCardComponent extends StatelessWidget {
  final dynamic comic;

  ComicCardComponent({required this.comic});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Column(
              children: <Widget>[
                Text(
                  comic.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
