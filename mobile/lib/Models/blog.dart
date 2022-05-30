import 'dart:core';

class Blog {
   int? id;
   String? titre;
   String? description;
   String? imageURL;

  Blog({
     this.id,
     this.titre,
     this.description,
     this.imageURL,

  });
  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['id'] as int,
      titre: json['titre'] as String,
      description: json['description'] as String,
      imageURL: json['imageURL'] as String,
    );
  }

}
