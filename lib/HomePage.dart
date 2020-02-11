import 'package:flutter/material.dart';
import 'dart:math' as math;

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  var fontColor = Colors.blue[700];
  var bodyColor = Color(0xFFADDFF9);
  var gradient100 = Colors.grey[100];
  var gradient400 = Colors.grey[400];
  var gradient500 = Colors.grey[500];
  var boxShadowRight = Color(0xFF74AFD5);
  var iconColor = Color(0xFF4A8CBC);
  var boxShadowLeft = Colors.white54;

  Animation spinDiskAnimation;
  AnimationController spinAnimationController;

  IconData play = Icons.play_arrow;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    spinAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    spinDiskAnimation =
        Tween<double>(begin: 0.0, end: 2.9).animate(spinAnimationController);

    spinAnimationController.forward();

    spinAnimationController.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) spinAnimationController.repeat();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: Column(
        //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 80.0,
          ),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'COUNTRY ROADS',
                    style: TextStyle(color: Colors.blue.shade900, fontSize: 35),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    'JOHN DENVER',
                    style: TextStyle(color: iconColor, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "SACHIN'S APPLE AIRPODS PRO",
                    style: TextStyle(color: boxShadowRight, fontSize: 10),
                  ),
                ),
              ),
            ],
          ),
          //SizedBox(height: 80.0),
//          Container(
//            child: Center(
//              child: Container(
//                child: Center(
//                  child: Icon(
//                    Icons.star,
//                    color: Colors.red.shade600,
//                  ),
//                ),
//                width: 50,
//                height: 30,
//                decoration: BoxDecoration(
//                  color: bodyColor,
//                  border: Border.all(color: bodyColor, width: 2.0),
//                  shape: BoxShape.rectangle,
//                  borderRadius: BorderRadius.circular(30),
//                  gradient: LinearGradient(
//                      begin: Alignment.topLeft,
//                      end: Alignment.bottomRight,
//                      colors: [
//                        boxShadowRight,
//                        bodyColor,
//                        Colors.white10,
//                        bodyColor
//                      ],
//                      stops: [
//                        0.1,
//                        0.5,
//                        0.8,
//                        1
//                      ]),
//                ),
//              ),
//            ),
//            width: 55,
//            height: 35,
//            decoration: BoxDecoration(
//              color: bodyColor,
//              shape: BoxShape.rectangle,
//              borderRadius: BorderRadius.circular(30),
//              boxShadow: getShadowIcons(),
//            ),
//          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20),
                  child: Container(
                    child: Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.replay,
                                color: iconColor,
                                size: 26,
                              ),
                              decoration: BoxDecoration(
                                color: bodyColor,
                                shape: BoxShape.circle,
                                boxShadow: getShadowIcons(),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.fast_forward,
                                color: iconColor,
                                size: 26,
                              ),
                              decoration: BoxDecoration(
                                color: bodyColor,
                                shape: BoxShape.circle,
                                boxShadow: getShadowIcons(),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                if (play == Icons.pause) {
                                  setState(() {
                                    play = Icons.play_arrow;
                                    spinAnimationController.stop();
                                  });
                                } else if (play == Icons.play_arrow) {
                                  setState(() {
                                    play = Icons.pause;
                                    spinAnimationController.forward();
                                  });
                                }
                              },
                              child: Container(
                                child: Icon(
                                  play,
                                  color: iconColor,
                                  size: 26,
                                ),
                                decoration: BoxDecoration(
                                  color: bodyColor,
                                  shape: BoxShape.circle,
                                  boxShadow: getShadowIcons(),
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.fast_rewind,
                                color: iconColor,
                                size: 26,
                              ),
                              decoration: BoxDecoration(
                                color: bodyColor,
                                shape: BoxShape.circle,
                                boxShadow: getShadowIcons(),
                              ),
                            ),
                          ],
                        ),
                        width: 40,
                        height: 290,
                        decoration: BoxDecoration(
                          color: bodyColor,
                          border: Border.all(color: bodyColor, width: 2.0),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                iconColor,
                                Colors.white10,
                                Colors.white10,
                                bodyColor
                              ],
                              stops: [
                                0.1,
                                0.6,
                                0.8,
                                1
                              ]),
                        ),
                      ),
                    ),
                    width: 45,
                    height: 300,
                    decoration: BoxDecoration(
                      color: bodyColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: getShadow(),
                    ),
                  ),
                ),
//            SizedBox(
//              width: 100,
//            ),
                Container(
                  width: 280,
                  height: 280,
                  decoration: BoxDecoration(
                    color: bodyColor,
                    shape: BoxShape.circle,
                    boxShadow: getShadow(),
                  ),
                  child: Center(
                    child: Container(
                      child: Center(
                        child: Container(
                          child: Center(
                            child: Container(
                              width: 190,
                              height: 190,
                              decoration: BoxDecoration(
                                  color: Color(0xFF0C0804),
                                  shape: BoxShape.circle),
                              child: AnimatedBuilder(
                                animation: spinAnimationController,
                                builder: (BuildContext context, Widget child) =>
                                    Transform.rotate(
                                  angle: spinDiskAnimation.value * 2,
                                  child: Stack(
                                    children: <Widget>[
                                      Center(
                                        child: Opacity(
                                          opacity: 0.5,
                                          child: Image.asset(
                                            'assets/circle-cropped.png',
                                            width: 120,
                                            height: 120,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: CustomPaint(
                                          painter: CirclePainter(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              color: bodyColor,
                              shape: BoxShape.circle,
                              border: Border.all(color: iconColor, width: 2.0),
                              boxShadow: [
                                BoxShadow(
                                    color: boxShadowRight,
                                    offset: Offset(4.0, 6.0),
                                    blurRadius: 5.0,
                                    spreadRadius: 2.0),
                                BoxShadow(
                                    color: boxShadowLeft,
                                    offset: Offset(-10.0, -2.0),
                                    blurRadius: 4.0,
                                    spreadRadius: -3),
                              ]),
                        ),
                      ),
                      width: 280,
                      height: 280,
                      decoration: BoxDecoration(
                        color: bodyColor,
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              boxShadowRight,
                              Color(0xFF87BBDC),
                              Colors.white10,
                              bodyColor
                            ],
                            stops: [
                              0.1,
                              0.3,
                              0.8,
                              1
                            ]),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 80,
            height: 80,
            child: Icon(
              Icons.blur_on,
              size: 60.0,
              color: boxShadowRight,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: boxShadowRight,
                      offset: Offset(2.0, 3.0),
                      blurRadius: 2.0,
                      spreadRadius: -1.0),
                  BoxShadow(
                      color: boxShadowLeft,
                      offset: Offset(-9.0, .0),
                      blurRadius: 4.0,
                      spreadRadius: -8),
                ],
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [bodyColor, bodyColor, boxShadowRight, iconColor],
                    stops: [0.1, 0.45, 0.94, 1]),
                color: bodyColor),
          ),
        ],
      ),
    );
  }

  dynamic getShadow() {
    return [
      BoxShadow(
          color: boxShadowRight,
          offset: Offset(4.0, 6.0),
          blurRadius: 5.0,
          spreadRadius: 2.0),
      BoxShadow(
          color: boxShadowLeft,
          offset: Offset(-9.0, .0),
          blurRadius: 5.0,
          spreadRadius: -6),
    ];
  }

  dynamic getShadowIcons() {
    return [
      BoxShadow(
          color: boxShadowRight,
          offset: Offset(2.0, 3.0),
          blurRadius: 2.0,
          spreadRadius: 1.0),
      BoxShadow(
          color: boxShadowLeft,
          offset: Offset(-3.0, -1.0),
          blurRadius: 1.0,
          spreadRadius: -1),
    ];
  }
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;
    paint.style = PaintingStyle.fill; // Change this to fill

    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 10.0, paint);

    var paint1 = Paint();
    paint1.color = Colors.white;
    paint1.style = PaintingStyle.stroke;
    paint1.strokeWidth = 0.5;

    var paint2 = Paint();
    paint2.color = Colors.black;
    paint2.style = PaintingStyle.fill;

    var paintRed = Paint();
    paintRed.color = Colors.grey.shade400;
    paintRed.style = PaintingStyle.fill;
    paintRed.strokeWidth = 0.5;

    var paintGrey = Paint();
    paintRed.color = Colors.grey.shade400;
    paintRed.style = PaintingStyle.stroke;
    paintRed.strokeWidth = 0.5;

    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 15.0, paintRed);
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 5.0, paint2);
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 20.0, paintRed);
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 40.0, paintRed);

    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 55.0, paint1);

    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 75.0, paint1);
    canvas.drawCircle(Offset(size.height / 2, size.width / 2), 85.0, paint1);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return false;
  }
}
