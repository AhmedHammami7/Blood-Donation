import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/Screens/signup.dart';

import '../Services/loginService.dart';
import 'login.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: Color.fromARGB(255, 226, 226, 226),
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, left: 10.0,bottom: 0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 350.0,
                  width: 350.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Welcome to',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
            Text(
              'Donate Blood',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'poppins',
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'The application is for donating',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                  color: Color.fromARGB(255, 86, 76, 76)),
            ),
            Text(

              'blood or making a request',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins',
                  color: Color.fromARGB(255, 86, 76, 76)),

            ),
            BottomAppBar(
              color: Color.fromARGB(255, 226, 226, 226),
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 0.0 ,
                    left: 90.0, right: 50.0,bottom: 10),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          CupertinoPageRoute(
                            builder: (_) => LoginScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 65.0,
                        width: 211.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color.fromARGB(255, 233, 13, 24),
                              Color.fromARGB(255, 196, 21, 28),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: 'poppins',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.of(context).pushReplacement(
                CupertinoPageRoute(
                  builder: (_) => SignUpPage(),
                ),
              )},
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Don\'t have an account? ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 86, 76, 76),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'poppins'),
                    ),
                    TextSpan(
                      text: 'Create',

                      style: TextStyle(
                          color: Color.fromARGB(255, 86, 76, 76),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'poppins'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
