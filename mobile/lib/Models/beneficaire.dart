import 'dart:core';

class Beneficaire {
  final int idBeneficaire;
  final String nom;
  final String mail;
  final String telephone;
  final String password;
  final String imageURL;
  final String adresse;
  final bool doneur;

   Beneficaire({
    required this.idBeneficaire,
    required this.nom,
    required this.mail,
    required this.telephone,
    required this.password,
    required this.imageURL,
    required this.adresse,
    required this.doneur,
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
    );
  }

}
