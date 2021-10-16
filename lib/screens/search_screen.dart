import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          child: FloatingSearchBar(
            iconColor: Colors.black,
            backgroundColor: Colors.grey[200],
            elevation: 0,
            borderRadius: BorderRadius.circular(20),
            transitionCurve: Curves.easeInExpo,
            transition: CircularFloatingSearchBarTransition(),
            physics: const BouncingScrollPhysics(),
            builder: (context, _) => buildBody(),
            leadingActions: [],
            actions: [
              FloatingSearchBarAction(
                showIfClosed: false,
                showIfOpened: false,
                child: CircularButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Data of Search
Widget buildBody() {
  final time = DateTime.now();
  print('BuildBody at ${time.second}:${time.millisecond}');
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Material(
      child: Column(
        children: List.generate(10, (index) => index.toString())
            .map((e) => ListTile(
                  title: Text(e),
                ))
            .toList(),
      ),
    ),
  );
}
