import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondScreen extends StatelessWidget {
  String qtext ;
  String qa  ;
  SecondScreen({super.key,required this.qtext ,required this.qa });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(qtext,
              style: TextStyle(fontSize: 20),),
            ),
            Align(alignment: Alignment.bottomRight, child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('- $qa',style: TextStyle(fontSize: 18),),
            )),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: (){Navigator.of(context).pop();},child: const Text('Back')),
            ),
          ],
        ),
      )
    );
  }
}