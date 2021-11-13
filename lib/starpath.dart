import 'package:flutter/material.dart';

class MyStarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(158, 60);
    path.lineTo(130, 180);
   // path.moveTo(130, 190);
    path.lineTo(20, 200);
   // path.moveTo(0, 190);
    path.lineTo(130, 230);
   // path.moveTo(130, 210);
    path.lineTo(155, 350);
   // path.moveTo(150, 400);
    path.lineTo(190, 230);
    //path.moveTo(210, 190);
    path.lineTo(380, 170);
  //  path.moveTo(300, 200);
    path.lineTo(300, 200);
//    path.moveTo(160, 190);
    path.lineTo(195,180);
    path.lineTo(185,150);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Starpath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: MyStarClipper(),
          child: Container(
            height: 400,
            width: 300,
             decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.red, Colors.red])),
          ),
        ),
      ),
    );
  }
}
