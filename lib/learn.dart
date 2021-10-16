import 'package:flutter/material.dart';

void main() => runApp(LearnFlex());

class LearnFlex extends StatelessWidget {
  const LearnFlex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Learn Flex'),
        ),
      ),
    );
  }
}
