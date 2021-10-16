import 'package:flutter/material.dart';

void main() => runApp(SearchScreen());

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Search',
        home: SearchBarPage(),
      ),
    );
  }
}

class SearchBarPage extends StatefulWidget {
  SearchBarPage({Key key}) : super(key: key);

  @override
  _SearchBarPageState createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  static const historyLength = 5;
  List<String> _searchHistory = [
    'flut',
    'flutter',
    'widgets',
    'rescoder',
    'new item',
  ];
  List<String> filteredSearchHistory({
    @required String filter,
  }) {
    if (filter != null && filter.isNotEmpty) {
      return _searchHistory.reversed.toList();
    }
  }

  void addSearcgTerm(String term) {}

  String selectedTerm;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
