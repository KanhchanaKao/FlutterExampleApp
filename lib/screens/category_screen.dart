import 'package:efind_beta_1/screen/favorite_screen.dart';
import 'package:efind_beta_1/screen/search_screen.dart';
import 'package:flutter/material.dart';

import '../mockup.dart';

var categories = CategoryData.getData;

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'eFind',
          style: TextStyle(color: Colors.black, fontSize: 32.0),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              })
        ],
        backgroundColor: Colors.grey[300],
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.7,
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: CategoryCardWidget(
                category_icon: categories[index]['category_icon'],
                category_name: categories[index]['category_name'],
              ),
            );
          }),
    );
  }
}

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    Key? key,
    @required this.category_name,
    @required this.category_icon,
  }) : super(key: key);
  final category_name;
  final category_icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Category CLick');
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.white,
        elevation: 4,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: category_icon,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  category_name,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
