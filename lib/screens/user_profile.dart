import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text('User Profile'),
            Card(),
            SizedBox(
              height: 20,
            ),
            user_profile(),
            Text('History')
          ],
        ),
      ),
    );
  }
}

class user_profile extends StatelessWidget {
  const user_profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
        height: 10,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Stack(
            children: [
              Positioned(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 25, 10, 0),
                      child: Column(
                        children: [
                          Container(
                            child: Text("Kanhchana Kao"),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.facebook_rounded),
                                Text("KanhchanaKao")
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.email_rounded),
                                Text("kanh@kit.edu.kh")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
