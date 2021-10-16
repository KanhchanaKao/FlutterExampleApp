import 'package:flutter/material.dart';

class AppBarNav extends StatelessWidget {
  final String appBarTitle;
  final Color bgColor;
  final AppBar appBarNav;
  const AppBarNav({Key key, this.appBarNav, this.appBarTitle, this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: Text(
            appBarTitle,
            style: TextStyle(color: Colors.black, fontSize: 32),
          ),
          backgroundColor: bgColor,
          elevation: 0,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Colors.black,
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
