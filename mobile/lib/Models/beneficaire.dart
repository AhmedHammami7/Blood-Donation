import 'dart:core';

import 'package:mobile/Models/sang.dart';

class Beneficaire {
   int? idBeneficaire;
   String? nom;
   String? mail;
   String? telephone;
   String? password;
   String? imageURL;
   String? adresse;
   bool? doneur;
   Sang? sang;

   Beneficaire({
     this.idBeneficaire,
     this.nom,
     this.mail,
     this.telephone,
     this.password,
     this.imageURL,
     this.adresse,
     this.doneur,
     this.sang
});
  factory Beneficaire.fromJson(Map<String, dynamic> json) {
    return Beneficaire(
      idBeneficaire: json['idBeneficaire'] as int,
      nom: json['nom'] as String,
      mail: json['mail'],
      telephone: json['telephone'],
      password: json['password'],
      imageURL: json['imageURL'],
      adresse: json['adresse'],
      doneur: json['doneur'],
      sang:json['Sang']
    );
  }

}
