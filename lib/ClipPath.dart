import 'package:flutter/material.dart';
import 'cakecut.dart';
import 'curvedpath.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var controlPoint = Offset(10, 210);
    var endPoint = Offset(70, 200);
    var controlPoint1 = Offset(320, 190);
    var endPoint1 = Offset(300, 95);
    path.moveTo(0, 0);
    path.lineTo(0, 290); //line coming from 0 xaxis to yaxis 400

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(240, 200);
    path.quadraticBezierTo(
        controlPoint1.dx, controlPoint1.dy, endPoint1.dx, endPoint1.dy);
//quadratic bezier here
    path.lineTo(300, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class CustomShape extends StatelessWidget {
  List<String> images = [
    'assets/it.jpeg',
    'assets/science.png',
    'assets/cutting.png',
    'assets/culture.jpeg'
  ];
  List<String> departments = ['IT', 'Science', 'Cutting', 'Culture'];
  List<String> types = ['UI/UX ', 'IOS', 'MOBILE'];
  List<String> roles = ['Designer', 'Developer', 'Developer'];
  List<Color> colors = [Color(0xffFEE9CE), Colors.blue, Colors.yellow];
  List<String> oppurtunities = [
    '4 Job Oppurtunity',
    '13 Job Oppurtunity',
    '6 Job Oppurtunity'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.all(0),
        children: [
          Stack(
            children: [
              Container(
                height: 260,
                width: 490,
                margin: EdgeInsets.only(bottom: 135),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(90)),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 80, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.fingerprint,
                        size: 50,
                      ),
                      //	Spacer(),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff4E51BF),
                        ),
                        child: Icon(
                          Icons.face,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 140,
                child: ClipPath(
                  clipper: MyCustomClipper(),
                  child: Container(
                    height: 400,
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.only(left: 40, right: 90),
                      child: Column(
				      crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 70,
                          ),
                          Text(
                            'Welcome,',
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Find Your',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Dream Job',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(54),
                            topRight: Radius.circular(54)),
                        color: Color(0xffFEE9CE)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                //adding:EdgeInsets.symmetric(horizontal:10),
                Text(
                  'Explore Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  size: 26,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
             Container(
              height: 160,

              //	  color:Colors.black,
              //  height:100,
              //  width:100,
              //		  color:Colors.red,

              child: ListView.separated(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (BuildContext context, int i) {
                  return SizedBox(
                    //  height: 10,
                    width: 10,
                  );
                },
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    margin: EdgeInsets.only(left:20),
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(45)),
                      color: Color(0xffF4F5FE),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xffFFFFFF),
                          backgroundImage: AssetImage(images[i]),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(departments[i]),
                      ],
                    ),
                  );
                },
              ),
            ),
         
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                //adding:EdgeInsets.symmetric(horizontal:10),
                Text(
                  'Popular Search',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  size: 26,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
             Container(
              height: 180,
              child: ListView.separated(
               // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, i) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemBuilder: (context, i) {
                  return Container(
				  margin:EdgeInsets.only(left:20),
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(55)),
                      color: colors[i],
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 80,left:20),
                      child: Column(
                        
			crossAxisAlignment:CrossAxisAlignment.start,
			children:[
                          Text(
                            types[i],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            roles[i],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            oppurtunities[i],
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
         
	  SizedBox(height:20,),
          TextButton(
            child: Text('Go to cakecutting the box'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cakecut()),
              );
            },
          ),
        ],
      ),
    );
  }
}
