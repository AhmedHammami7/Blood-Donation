import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
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

class BeneficaireScreen extends StatefulWidget {
  @override
  _BeneficaireScreenState createState() => _BeneficaireScreenState();
}

class _BeneficaireScreenState extends State<BeneficaireScreen> {
  Future fetchRequete() async {
    var res = await get(Uri.parse("http://10.0.2.2:8080/beneficaire/"));
    var jsonData = jsonDecode(res.body);
    List<Beneficaire> beneficaires = [];
    for (var u in jsonData) {
      Beneficaire beneficaire = Beneficaire(
          idBeneficaire: u["idBeneficaire"],
          nom: u['nom'],
          mail: u['mail'],
          telephone: u['telephone'],
          password: u['password'],
          imageURL: u['imageURL'],
          adresse: u['adresse'],
          doneur: u['doneur']);
      beneficaires.add(beneficaire);
    }
    print(beneficaires.length);
    return (beneficaires);
  }

  //List<Requete> requetes = Requete.getRequetes();
  var listblood = ['A+', 'O+', 'A-', 'B-', 'AB+', 'AB-', 'B+', 'O-'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Image.asset('assets/quote2.png',
              width: 400, alignment: Alignment.topCenter),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'A+',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              ),Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'A-',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              ),Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'B+',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'B-',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'AB+',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              ),Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'AB-',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              ),Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'O+',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
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
                        'O-',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'poppins',
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text.rich(
            TextSpan(
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'poppins',
              ),
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.health_and_safety,
                    size: 35,
                    color: Color.fromARGB(255, 86, 76, 76),
                  ),
                ),
                TextSpan(
                  text: 'Donors                           ',
                )
              ],
            ),
          ),
          Container(
            height: 259,
            child: Card(
              child: FutureBuilder(
                  future: fetchRequete(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                      return Container(
                        child: Center(
                          child: Text("Loading..."),
                        ),
                      );
                    } else
                      return Container(
                        child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, i) {
                              final number = snapshot.data[i].telephone;
                              return ListTile(
                                leading: CircleAvatar(
                                    radius: 35.0,
                                    backgroundImage: NetworkImage(
                                        snapshot.data[i].imageURL)),
                                title: Text(snapshot.data[i].nom),
                                subtitle: Text("Blood Type: "+listblood[i]),
                                trailing:
                                   Text("Adresse: "+snapshot.data[i].adresse),


                              );}),
                      );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
