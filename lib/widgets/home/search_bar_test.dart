import 'package:flutter/material.dart';

class SearchBarTest extends StatefulWidget {
  SearchBarTest({Key key}) : super(key: key);

  @override
  _SearchBarTestState createState() => _SearchBarTestState();
}

class UserDetails {
  final int id;
  final String firstName, lastName, profileUrl;

  UserDetails(
      {this.id,
      this.firstName,
      this.lastName,
      this.profileUrl =
          'https://i.amz.mshcdn.com/3NbrfEiECotKyhcUhgPJHbrL7zM=/950x534/filters:quality(90)/2014%2F06%2F02%2Fc0%2Fzuckheadsho.a33d0.jpg'});

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return new UserDetails(
      id: json['id'],
      firstName: json['name'],
      lastName: json['username'],
    );
  }
}

class _SearchBarTestState extends State<SearchBarTest> {
  TextEditingController controller = new TextEditingController();
  List<UserDetails> _searchResult = [];
  List<UserDetails> _userDetails = [];
  final Uri url = 'https://jsonplaceholder.typicode.com/users' as Uri;

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    _userDetails.forEach((userDetail) {
      if (userDetail.firstName.contains(text) ||
          userDetail.lastName.contains(text)) _searchResult.add(userDetail);
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          new Container(
            color: Theme.of(context).primaryColor,
            child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Card(
                child: new ListTile(
                  leading: new Icon(Icons.search),
                  title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: onSearchTextChanged,
                  ),
                  trailing: new IconButton(
                    icon: new Icon(Icons.cancel),
                    onPressed: () {
                      controller.clear();
                      onSearchTextChanged('');
                    },
                  ),
                ),
              ),
            ),
          ),
          new Expanded(
            child: _searchResult.length != 0 || controller.text.isNotEmpty
                ? new ListView.builder(
                    itemCount: _searchResult.length,
                    itemBuilder: (context, i) {
                      return new Card(
                        child: new ListTile(
                          leading: new CircleAvatar(
                            backgroundImage: new NetworkImage(
                              _searchResult[i].profileUrl,
                            ),
                          ),
                          title: new Text(_searchResult[i].firstName +
                              ' ' +
                              _searchResult[i].lastName),
                        ),
                        margin: const EdgeInsets.all(0.0),
                      );
                    },
                  )
                : new ListView.builder(
                    itemCount: _userDetails.length,
                    itemBuilder: (context, index) {
                      return new Card(
                        child: new ListTile(
                          leading: new CircleAvatar(
                            backgroundImage: new NetworkImage(
                              _userDetails[index].profileUrl,
                            ),
                          ),
                          title: new Text(_userDetails[index].firstName +
                              ' ' +
                              _userDetails[index].lastName),
                        ),
                        margin: const EdgeInsets.all(0.0),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
