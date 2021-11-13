import 'package:flutter/material.dart';
import 'ClipPath.dart';
import 'cakecut.dart';
import 'curvedpath.dart';
import 'package:flutter_screen_lock/functions.dart';




void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SixthDesign(),
    ),
  );
}

class SixthDesign extends StatefulWidget {
  @override
  _SixthDesignState createState() => _SixthDesignState();
}

class _SixthDesignState extends State<SixthDesign> {
  double iheight = 80;
  double iwidth = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: iheight,
              width: iwidth,
              color: Colors.yellow,
            ),
          ),
          SizedBox(
            height: 90,
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  if (iheight < 260) {
                    iheight = iheight + 20;
                    iwidth = iwidth + 10;
                    print(iheight);
                    print(iwidth);
                  }
                  ;
                },
              );
            },
            child: Container(
                height: 40,
               // width: 150,
                color: Colors.blue,
                child: Text('Increase Box Size',style:TextStyle(
						fontSize:19,
						fontWeight:FontWeight.bold
						),),
          ),),
          SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              setState(
                () {
                  if (iheight <= 260 && iwidth > 130) {
                    iheight = iheight - 20;
                    iwidth = iwidth - 10;
                    print(iheight);
                    print(iwidth);
                  }
                  ;
                },
              );
            },
            child: Container(
              height: 40,
              width: 150,
              color: Colors.green,
              child: Text(
                'Decrease Box Size',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Container(
            height: 30,
           // width: 90,
            color: Colors.black,
            child: TextButton(
              child: Text(
                'Go to task 2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomShape()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
