import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/Screens/dashboard.dart';
import '../utilities/constants.dart';
import '../Services/LoginService.dart';
import '../Models/beneficaire.dart';

import 'package:http/http.dart';

class RequestsScreen extends StatefulWidget {
  @override
  _RequestsScreenState createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  Future fetchBeneficaire() async {
    var res = await get(Uri.parse("http://10.0.2.2:8080/beneficaire"));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Card(
            child: FutureBuilder(
                future: fetchBeneficaire(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.data == null) {
                    return Container(child: Center(child: Text(
                        "Loading..."),),);
                  }
                  else
                    return ListView.builder(itemCount: snapshot.data!.length,
                        itemBuilder: (context, i) {
                          return ListTile(
                          title: Text(snapshot.data[i].nom),
                          subtitle: Text("Adresse: "+snapshot.data[i].adresse),
                          trailing: Text("Telephone: "+snapshot.data[i].telephone),
                          );
                        });
                }),
          ),
        )
    );
  }
}
