import 'package:efind_beta_1/widgets/store_card_widget.dart';
import 'package:flutter/material.dart';
import '../mockup.dart';
//  Mock Up Data

var mockUp = ShopData.getData;

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: mockUp.length,
                  itemBuilder: (context, index) {
                    return StoreCardWidget(
                        storeName: mockUp[index]['name'],
                        storeDescription: mockUp[index]['description'],
                        storeRating: mockUp[index]['rating'],
                        storeImage: mockUp[index]['image'],
                        isFavorite: mockUp[index]['isFav']);
                  }))
        ],
      ),
    );
  }
}
