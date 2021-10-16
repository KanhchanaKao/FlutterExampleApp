import 'package:flutter/material.dart';

class UserInfoCard extends StatelessWidget {
  const UserInfoCard({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: double.infinity,
          height: 100,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                child: Text(
                  'Kanhchana',
                  style: TextStyle(fontSize: 18),
                ),
                top: 10,
                left: 20,
              ),
              Positioned(
                child: Icon(
                  Icons.facebook_outlined,
                  size: 15,
                ),
                top: 50,
                left: 20,
              ),
              Positioned(
                child: Text('KanhchanaKao'),
                top: 50,
                left: 40,
              ),
              Positioned(
                child: Icon(
                  Icons.email,
                  size: 15,
                ),
                top: 70,
                left: 20,
              ),
              Positioned(
                child: Text('Kanhchana@gmail.com'),
                top: 70,
                left: 40,
              ),
              Positioned(
                top: 5,
                left: 300,
                child: Icon(
                  Icons.person,
                  size: 70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
