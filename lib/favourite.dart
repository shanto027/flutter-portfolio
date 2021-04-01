import 'package:flutter/material.dart';

void main () => runApp(favourite());

class favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Favourite'),
        ),
        body: Center(
          child: Text('My favourite'),
        ),
      ),
    );
  }
}