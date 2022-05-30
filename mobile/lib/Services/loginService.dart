import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:mobile/Models/beneficaire.dart';
import 'package:http/http.dart';


String url = "http://10.0.2.2:8080/beneficaire";
Future<Beneficaire> fetchBeneficaire() async {
  var res = await get(Uri.parse(url));
  if (res.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Beneficaire.fromJson(jsonDecode(res.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load beneficaire');
  }


}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();

}
class _LoginState extends State<Login> {
  late Future<Beneficaire> futureBeneficaire;

  @override
  void initState() {
    super.initState();
    futureBeneficaire = fetchBeneficaire();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Beneficaire>(
            future: futureBeneficaire,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                String? a=snapshot.data!.nom;
                return Text(a!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
// ···
}