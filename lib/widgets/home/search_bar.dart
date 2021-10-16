import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

void main() => runApp(SearchBar());

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FloatingSearchBar(
        transitionCurve: Curves.easeInOutCubic,
        transition: CircularFloatingSearchBarTransition(),
        physics: const BouncingScrollPhysics(),
        builder: (context, _) => buildBody(),
      ),
    );
  }

  Widget buildBody() {
    final time = DateTime.now();
    print('BuildBody at ${time.second}:${time.millisecond}');
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Material(
        child: Column(
          children: List.generate(100, (index) => index.toString())
              .map((e) => ListTile(
                    title: Text(e),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
