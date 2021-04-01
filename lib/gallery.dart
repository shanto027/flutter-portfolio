

import 'package:flutter/material.dart';

void main () => runApp(gallery());



class gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Favourite'),
        ),
        body: Center(
          child: Text('My gallery'),
        ),
      ),
    );
  }
}