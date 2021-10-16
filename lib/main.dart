import 'package:efind_mvp/screens/choose_location/choose_location.dart';
import 'package:efind_mvp/screens/home/home.dart';
import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'eFind',
        home: Home(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("eFind"),
          ),
          body: Container(
            child: Text("Boom"),
          )),
    );
  }
}
