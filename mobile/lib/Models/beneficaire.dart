import 'dart:core';

class Beneficaire {
  int idBeneficaire;
  String nom;
  String mail;
  String telephone;
  String password;
  String imageURL;
  bool doneur;

   Beneficaire({
    required this.idBeneficaire,
    required this.nom,
    required this.mail,
    required this.telephone,
    required this.password,
    required this.imageURL,
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
      doneur: json['doneur'],
    );
  }

}
