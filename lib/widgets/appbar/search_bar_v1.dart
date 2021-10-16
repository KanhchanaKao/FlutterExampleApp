import 'package:flutter/material.dart';

void main() => runApp(SearchTesting());

class SearchBarV1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        title: Text(
          'eFind Testing',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //   },
        // ),
      ),
      drawer: Drawer(),
    );
  }
}

class SearchTesting extends StatefulWidget {
  // const SearchTesting({ Key? key }) : super(key: key);

  @override
  _SearchTestingState createState() => _SearchTestingState();
}

class _SearchTestingState extends State<SearchTesting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchBarV1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final stores = [
    'Doll',
    'Profes',
    'Gobing',
    'Hugu',
    'Sibu',
    'Numi',
    'Orichi',
    'Plothes',
    'Sendex',
    'Nike',
    'Addidas',
    'Dopinu',
    'HighStore',
    'LoopingX'
  ];
  final recentStores = ['Nike', 'Addidas', 'Dopinu', 'HighStore', 'LoopingX'];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions for app bar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    //Leading Icon on the left of the app bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // show more result based on the selection
    // throw UnimplementedError();
    return Card(
      color: Colors.red,
      shape: StadiumBorder(),
      child: Center(
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Shwo when someone search for something
    final suggestionList = query.isEmpty
        ? recentStores
        : stores.where((store) => store.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.store),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey),
                )
              ]),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
