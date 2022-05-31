import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/Screens/dashboard.dart';
import 'package:mobile/Screens/settings.dart';
import '../utilities/constants.dart';
import '../Services/LoginService.dart';
import '../Models/beneficaire.dart';
import 'package:http/http.dart';

import 'home.dart';

class AddBloodRequestScreen extends StatefulWidget {
  @override
  _AddBloodRequestScreenState createState() => _AddBloodRequestScreenState();
}

class _AddBloodRequestScreenState extends State<AddBloodRequestScreen> {
  Widget _buildCreateBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          CupertinoPageRoute(
            builder: (_) => HomeScreen(),
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
            'Cerate',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: 'poppins',
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              CupertinoPageRoute(
                builder: (_) => HomeScreen(),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.red,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => SettingsPage()));
            },
          ),
        ],
      ),
      body: Container(color: Color.fromARGB(255, 226, 226, 226),
        alignment: Alignment.center,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 48),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'poppins',
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.add,
                          size: 35,
                          color: Color.fromARGB(255, 86, 76, 76),
                        ),
                      ),
                      TextSpan(
                        text: ' Add a New Request:                           ',
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 350.0,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Color.fromARGB(255, 86, 76, 76),
                      fontFamily: 'poppins',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0,),
                      prefixIcon: Icon(
                        Icons.bloodtype_outlined,
                        color: Color.fromARGB(255, 86, 76, 76),
                      ),
                      hintText: 'Blood Type',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 350.0,
                  child: TextField(
                    keyboardType: TextInputType.streetAddress,
                    style: TextStyle(
                      color: Color.fromARGB(255, 86, 76, 76),
                      fontFamily: 'poppins',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.location_on_outlined,
                        color: Color.fromARGB(255, 86, 76, 76),
                      ),
                      hintText: 'Address',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 350.0,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                      color: Color.fromARGB(255, 86, 76, 76),
                      fontFamily: 'poppins',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 86, 76, 76),
                      ),
                      hintText: 'Phone Number',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: kBoxDecorationStyle,
                  height: 60.0,
                  width: 350.0,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Color.fromARGB(255, 86, 76, 76),
                      fontFamily: 'poppins',
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,

                      prefixIcon: Icon(

                        Icons.description,
                        color: Color.fromARGB(255, 86, 76, 76),
                      ),
                      hintText: 'Description',
                      hintStyle: kHintTextStyle,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            _buildCreateBtn(),

          ],
        ),



      ),


    );
  }
}
