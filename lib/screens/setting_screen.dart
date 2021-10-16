import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text(
                  'Setting',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Change Name',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Change Password',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Language',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.document_scanner),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Term of Use',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Logout',
                    style: Theme.of(context).textTheme.subtitle1,
                  )
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
