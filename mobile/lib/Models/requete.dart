import 'package:json_annotation/json_annotation.dart';
import 'dart:core';
import 'package:mobile/Models/beneficaire.dart';
import 'package:mobile/Models/sang.dart';
@JsonSerializable(nullable: false)
class Requete {
  int? idRequete;
  String? adresse;
  String? telephone;
  String? description;
  DateTime? date;
  Sang? sang;
  List? beneficiaire;

  Requete({
    this.idRequete,
    this.adresse,
    this.telephone,
    this.description,
    this.date,
    this.sang,
    this.beneficiaire,
  });

  /*static List<Requete> getRequetes() {
    List<Requete> requetes = <Requete>[];
    requetes.add(new Requete(idRequete: 1,
        adresse: "Mahdia",
        telephone: "22765284",
        description: "accident voiture",
        date: DateTime.utc(2022, 07, 21),
        sang: Sang(idSang: 1, type: "A+", types_compatibles: "O+/O-/A+/A-"),
        beneficiaire: Beneficaire(idBeneficaire: 1,
            nom: "Motez Lassoued",
            mail: "motezlassoued0@gmail.com",
            telephone: "22765284",
            password: "azerty123",
            imageURL: "https://drive.google.com/file/d/1GN3vlf7FJDqXDB5kzG3m5qjFYUk5rEae/view?usp=sharing",
            adresse: "mourouj",
            doneur: true,
            sang: Sang(
                idSang: 1, type: "A+", types_compatibles: "O+/O-/A+/A-"))));
    return requetes;
  }*/
  factory Requete.fromJson(Map<String, dynamic> json) {
    return Requete(
      idRequete: json['idRequete'] as int,
      adresse: json['adresse'] as String,
      telephone: json['telephone'],
      description: json['description'],
      date: json['date'],
      sang: json['sang'],
      beneficiaire: json['beneficaire'],
    );
  }
}
