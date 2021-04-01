import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '././profile.dart' ;
import '././project.dart';
import '././gallery.dart';
import '././bookmarks.dart';
import '././favourite.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue,
    ));

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.verified)),
            new Tab(icon: new Icon(Icons.favorite)),
            new Tab(icon: new Icon(Icons.library_music)),
            new Tab(icon: new Icon(Icons.crop_original)),
            new Tab(icon: new Icon(Icons.bookmarks)),
          ],
        ),
      ),
      body: new TabBarView(controller: controller, children: <Widget>[
        new profile(),
        new project(),
        new gallery(),
        new favourite(),
        new bookmarks(),

      ]),
    );
  }
}