import 'package:flutter/material.dart';
import 'curvedpath.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(size.height / 2, 0);
    path.lineTo(size.height / 2, size.width / 2);
    path.lineTo(0, size.width / 2);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class Cakecut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90, vertical: 170),
            child: ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                height: 290,
                width: 340,
                color: Color(0xffFEE9CE),
              ),
            ),
          ),
          TextButton(
            child: Text('Go to clippath the box'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Curvedpath()),
              );
            },
          ),
        ],
      ),
    );
  }
}
