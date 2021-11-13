import 'package:flutter/material.dart';
import 'starpath.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var controlPoint = Offset(20, 185);
    var endPoint = Offset(140, 200);
    var controlPoint1 = Offset(420, 160);
    var endPoint1 = Offset(410, 100);
    path.moveTo(0, 0);
    path.lineTo(0, 400); //line coming from 0 xaxis to yaxis 400

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(360, 200);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);
//quadratic bezier here
    path.lineTo(400, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Curvedpath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
		SizedBox(height:120,),
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(54),
                      topRight: Radius.circular(54)),
                  color: Color(0xffFEE9CE)),
            ),
          ),
          TextButton(
            child: Text('Go to Starpath box'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Starpath()),
              );
            },
          ),
        ],
      ),
    );
  }
}
