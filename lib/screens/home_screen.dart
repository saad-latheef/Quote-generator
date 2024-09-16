import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/second_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: Center(child: ElevatedButton(
          onPressed: () async {
          var url = Uri.parse('https://zenquotes.io/api/random');
          var response = await http.get(url);
          // print('Response status: ${response.statusCode}');
          // print('Response body: ${response.body}');
          var data = jsonDecode(response.body);
          String quote = data[0]["q"];
          String author = data[0]['a'];
          Navigator.of(context).push(MaterialPageRoute(builder : (context) => SecondScreen(qtext:quote, qa: author)));
        }, child: Text('Get random quote'))),
      )
    );
  }
}

