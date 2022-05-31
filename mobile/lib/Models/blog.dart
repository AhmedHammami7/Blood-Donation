import 'dart:core';

class Blog {
   int? id;
   String? titre;
   String? description;
   String? content;
   String? imageURL;

  Blog({
     this.id,
     this.titre,
     this.description,
     this.content,
     this.imageURL,

  });
  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['id'] as int,
      titre: json['titre'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      imageURL: json['imageURL'] as String,
    );
  }

}
