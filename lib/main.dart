import 'package:flutter/material.dart';
import 'HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Row(
//          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.only(left: 40),
//              child: Container(
//                width: 50,
//                height: 340,
//                decoration: BoxDecoration(
//                  color: Colors.blue,
//                  shape: BoxShape.rectangle,
//                  borderRadius: BorderRadius.circular(8),
//                ),
//              ),
//            ),
//            SizedBox(
//              width: 120,
//            ),
//            ClipRect(
//              clipBehavior: Clip.antiAlias,
//              clipper: CustomRect(),
//              child: Container(
//                width: 400,
//                height: 400,
//                decoration: BoxDecoration(
//                  color: Colors.blue,
//                  shape: BoxShape.circle,
//                  // borderRadius: BorderRadius.circular(8),
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class CustomRect extends CustomClipper<Rect> {
//  @override
//  Rect getClip(Size size) {
//    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width / 2, size.width);
//    return rect;
//  }
//
//  @override
//  bool shouldReclip(CustomRect oldClipper) {
//    return true;
//  }
//}
