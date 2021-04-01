import 'package:flutter/material.dart';

void main () => runApp(project());

class project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Project'),
        ),
        body: Center(
          child: Text('My Project'),
        ),
      ),
    );
  }
}