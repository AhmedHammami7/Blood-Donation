import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/Screens/dashboard.dart';
import '../utilities/constants.dart';

class RequestsScreen extends StatefulWidget {
  @override
  _RequestsScreenState createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                color: Color.fromARGB(255, 226, 226, 226),
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 80.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/quote.png',
                          width: 500, fit: BoxFit.cover),
                      SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}