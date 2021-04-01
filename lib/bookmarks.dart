
import 'package:flutter/material.dart';

void main () => runApp(bookmarks());


class bookmarks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bookmarks'),
        ),
        body: Center(
          child: Text('My Bookmarks'),
        ),
      ),
    );
  }
}