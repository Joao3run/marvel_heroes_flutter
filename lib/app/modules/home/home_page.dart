import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
            title:Text("Wave Clipper Design"),
            backgroundColor: Colors.redAccent
        ),
        body: ClipPath(
          clipper: WavyClipper(),
          child: Container(
            height: size.height * 0.09,
            width: size.width,
            color: Colors.teal[800],
            padding: EdgeInsets.only(top: 4),
          ),
        ),
    );
  }
}


class WavyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, 20);
    var firstControlPoint = Offset(size.width / 3.25, 65);
    var firstEndPoint = Offset(size.width / 1.75, 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondCP = Offset(size.width / 1.25, 0);
    var secondEP = Offset(size.width, 30);
    path.quadraticBezierTo(
        secondCP.dx, secondCP.dy, secondEP.dx, secondEP.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
