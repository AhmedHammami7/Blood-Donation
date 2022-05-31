import 'dart:convert';
import 'package:mobile/Screens/blog.dart';
import 'package:mobile/Screens/login.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/Screens/dashboard.dart';
import 'package:mobile/Screens/settings.dart';
import '../Models/blog.dart';
import '../Models/requete.dart';
import '../utilities/constants.dart';
import '../Services/LoginService.dart';
import '../Models/beneficaire.dart';
import 'package:http/http.dart';

import 'home.dart';

class BlogPageScreen extends StatefulWidget {
  @override
  _BlogPageScreenState createState() => _BlogPageScreenState();
}

class _BlogPageScreenState extends State<BlogPageScreen> {
  Future fetchBlog() async {
    var res = await get(Uri.parse("http://10.0.2.2:8080/blog"));
    var jsonData = jsonDecode(res.body);
    List<Blog> blogs = [];
    //List<Requete> requetes = Requete.getRequetes();
    for (var u in jsonData) {
      Blog blog = Blog(
        id: u["id"],
        titre: u["titre"],
        description: u["description"],
        imageURL: u["imageURL"],
        content: u["content"],
        //beneficiaire: u["beneficaire"]
      );
      blogs.add(blog);
    }
    print(blogs.length);
    return (blogs);
  }

  //List<Requete> requetes = Requete.getRequetes();
  var list2 = [
    'https://drive.google.com/uc?export=view&id=1GN3vlf7FJDqXDB5kzG3m5qjFYUk5rEae',
    'https://drive.google.com/uc?export=view&id=1wzLlq2k_lVYeSUWgV4xfadJkXMsfgcBz'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.of(context).pop(
              CupertinoPageRoute(
                builder: (_) => BlogsScreen(),
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
            height: 30.0,
          ),

          Container(
            height: 520,
            child: Card(
              child: FutureBuilder(
                  future: fetchBlog(),
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
                              return SafeArea(
                                  //decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(snapshot.data[i].imageURL))),
                                  child: Expanded(

                                  child:Container(child:
                                  Column(children:<Widget>[
                                    SizedBox(height: 20,),
                                    Text(snapshot.data[i].titre,style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 233, 13, 24)),/*textAlign: TextAlign.right*/),
                                    SizedBox(height: 20,),
                                    new Image.network(snapshot.data[i].imageURL),
                                    SizedBox(height: 40,),

                                    Text(snapshot.data[i].content,textAlign: TextAlign.justify,style: TextStyle(fontSize:17,fontWeight: FontWeight.bold))],
                              ),
                              )
                            ));},
                      )
                      );}),
            ),
          ),
        ],
      ),
    );
  }
}
