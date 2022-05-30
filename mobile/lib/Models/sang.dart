import 'dart:core';

class Sang {
  final int idSang;
  final String type;
  final String types_compatibles;

  Sang({
    required this.idSang,
    required this.type,
    required this.types_compatibles,

  });
  factory Sang.fromJson(Map<String, dynamic> json) {
    return Sang(
      idSang: json['idSang'] as int,
      type: json['type'] as String,
      types_compatibles: json['types_compatibles'],
    );
  }

}
