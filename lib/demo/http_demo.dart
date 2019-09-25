import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class HttpDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HttpDemo'),
        elevation: 0.0,
      ),
      body: HttpDemoHome(),
    );
  }
}

class HttpDemoHome extends StatefulWidget {
  @override
  _HttpDemoHomeState createState() => _HttpDemoHomeState();
}

class _HttpDemoHomeState extends State<HttpDemoHome> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<Post>> fetchPosts() async {
    final response = 
        await http.get('https://www.baimapicture.com/wp-json/wp/v2/movie?_embed=true');

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      
      List<Post> posts = responseBody
        .map<Post>((item) => Post.fromJson(item))
        .toList();

      return posts;
    } else {
      throw Exception('Failed to fetch posts.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        print('data: ${snapshot.data}');
        print('connectionState: ${snapshot.connectionState}');
        
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: Text('loading...'),
          );
        }

        return ListView(
          children: snapshot.data.map<Widget>((item) {
            return ListTile(
              title: Text(item.title),
              subtitle: Text(item.release),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item.imageUrl),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class Post {
  final int id;
  final String title;
  final String description;
  final String release;
  final String imageUrl;

  Post(
    this.id,
    this.title,
    this.description,
    this.release,
    this.imageUrl,
  );

  Post.fromJson(Map json)
    : id = json['id'],
      title = json['title']['rendered'],
      description = json['content']['rendered'],
      release = json['extended_custom_fields']['extended_content']['release_date'][0]['release_date_local'] + ' ' + json['extended_custom_fields']['extended_content']['release_date'][0]['release_date_role'],
      imageUrl = json['_embedded']['wp:featuredmedia'][0]['media_details']['sizes']['thumbnail']['source_url'];

  Map toJson() => {
    'title': title,
    'descritpion': description,
  };
}