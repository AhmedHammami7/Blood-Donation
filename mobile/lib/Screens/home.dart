import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/Screens/dashboard.dart';
import 'package:mobile/Screens/requests.dart';
import '../utilities/constants.dart';
import '../Services/LoginService.dart';
import '../Models/beneficaire.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart';

import 'add_blood_request.dart';
import 'blog.dart';
import 'contacting_a_request.dart';
import 'donors.dart';
import 'edit_profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  final List<Widget> _pages=[
    RequestsScreen(),
    AddBloodRequestScreen(),
    BeneficaireScreen(),
    BlogsScreen(),
    EditProfilePage()

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_selectedIndex],

      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.add),
                label: 'Add'),
            BottomNavigationBarItem(icon: Icon(Icons.health_and_safety),
                label: 'Donors'),
            BottomNavigationBarItem(icon: Icon(Icons.article),
                label: 'Blog'),
            BottomNavigationBarItem(icon: Icon(Icons.edit),
                label: 'Edit'),
          ],

        ),
      ),
    );
  }
}
