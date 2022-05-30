import 'package:flutter/material.dart';
import 'dart:math' as math;


class ContactingarequestWidget extends StatefulWidget {
  @override
  _ContactingarequestWidgetState createState() =>
      _ContactingarequestWidgetState();
}

class _ContactingarequestWidgetState extends State<ContactingarequestWidget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ContactingarequestWidget - FRAME

    return Scaffold(
        body:Container(padding: EdgeInsets.only(left: 20, top: 25, right: 16),
        width: 311,
        height: 823,
        decoration: BoxDecoration(
          color: Color.fromRGBO(238, 238, 238, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 26,
              left: 19,
              child: Container(
                  width: 41,
                  height: 41,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(

                            width: 41,
                            height: 41,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 0),
                                    blurRadius: 6)
                              ],
                              color: Color.fromRGBO(226, 226, 226, 1),
                            ))),
                    Positioned(
                        top: 7.188629150390625,
                        left: 27.69293212890625,
                        child: Transform.rotate(
                          angle: -90.66775477795515 * (math.pi / 180),
                          child: Container(
                              width: 27.852523803710938,
                              height: 16.1845760345459,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/Arrowdown1.png'),
                                    fit: BoxFit.fitWidth),
                              )),
                        )),
                  ]))),
          Positioned(
              top: 205,
              left: 81,
              child: Text(
                'Ahmed Hammami',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(53, 51, 51, 1),
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 268,
              left: 55,
              child: Text(
                'Added  : 04/04/2022',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(89, 87, 87, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 312,
              left: 56,
              child: Text(
                'Blood Type : O+',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(89, 87, 87, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 446,
              left: 90,
              child: Text(
                'Description : Car accident',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(89, 87, 87, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 356,
              left: 56,
              child: Text(
                'Matching Types : O+/O-/A+/A-',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(89, 87, 87, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 401,
              left: 55,
              child: Container(
                  width: 184,
                  height: 31,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 24,
                            height: 31,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/Pin12.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 0,
                        left: 29,
                        child: Text(
                          'Bizerte, Tunisia',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(89, 87, 87, 1),
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 47,
              left: 131,
              child: Container(
                  width: 132,
                  height: 132,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 132,
                            height: 132,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(132, 132)),
                            ))),
                    Positioned(
                        top: 5.677418231964111,
                        left: 4.25818395614624,
                        child: Container(
                            width: 123.48387145996094,
                            height: 122.06451416015625,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Memodified1.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
          Positioned(
              top: 528,
              left: 51,
              child: Text(
                'Location',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 528,
              left: 237,
              child: Text(
                'Call',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 529,
              left: 219,
              child: Container(
                  width: 29,
                  height: 29,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/5a4525bd546ddca7e1fcbc831.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 511,
              left: 77,
              child: Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 1)),
          Positioned(
              top: 574,
              left: 193,
              child: Transform.rotate(
                angle: 90 * (math.pi / 180),
                child: Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 1),
              )),
          Positioned(
              top: 575,
              left: 77,
              child: Divider(color: Color.fromRGBO(0, 0, 0, 1), thickness: 1)),
          Positioned(
              top: 664.9999389648438,
              left: 81,
              child: Text(
                'Message',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(183, 181, 181, 1),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 662.9999389648438,
              left: 232,
              child: Text(
                'Share case on social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(183, 181, 181, 1),
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 673.0956420898438,
              left: 194,
              child: Transform.rotate(
                angle: 90.00000000000003 * (math.pi / 180),
                child: Divider(
                    color: Color.fromRGBO(183, 181, 181, 1), thickness: 2),
              )),
          Positioned(
              top: 612,
              left: 245,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Share1.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 612,
              left: 121,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Message1.png'),
                        fit: BoxFit.fitWidth),
                  ))),
        ])));
  }
}
