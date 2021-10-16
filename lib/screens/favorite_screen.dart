import 'package:efind_beta_1/mockup.dart';
import 'package:flutter/material.dart';

var mockUp = ShopData.getData;

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: mockUp.length,
                    itemBuilder: (context, index) {
                      return mockUp[index]['isFav'] == true
                          ? StoreFavoriteCardWidget(
                              storeName: mockUp[index]['name'],
                              storeDescription: mockUp[index]['description'],
                              storeImage: mockUp[index]['image'],
                              isFavorite: mockUp[index]['isFav'])
                          : SizedBox();
                    }))
          ],
        ),
      ),
    );
  }
}

class StoreFavoriteCardWidget extends StatelessWidget {
  const StoreFavoriteCardWidget({
    Key? key,
    @required this.storeName,
    @required this.storeDescription,
    @required this.storeImage,
    @required this.isFavorite,
  }) : super(key: key);
  final storeName;
  final storeDescription;
  final storeImage;
  final isFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
      width: double.maxFinite,
      height: 200,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5,
        child: Stack(
          children: [
            Positioned(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  storeImage,
                  fit: BoxFit.cover,
                  height: 200,
                  width: MediaQuery.of(context).size.width * 0.45,
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.45,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(storeName,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Text(storeDescription,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.45,
              bottom: -10,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('View more'),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var favorite = Scaffold(
  body: Container(
    padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
    width: double.maxFinite,
    height: 250,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 5,
      child: Stack(
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                'assets/images/p2.jpg',
                fit: BoxFit.cover,
                height: 300,
                width: 200,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Title 001', style: TextStyle(fontSize: 16)),
                  Container(
                    width: 350,
                    child: Text(
                        'Manage your interface using view controllers and facilitate',
                        style: TextStyle(fontSize: 12)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('View more'),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline_sharp),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);

// var scaffold = Scaffold(
//   body: Container(
//     padding: EdgeInsets.fromLTRB(15, 15, 10, 0),
//     height: 300,
//     width: double.maxFinite,
//     child: Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//       elevation: 5,
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(30),
//             child: Image.asset(
//               'assets/images/p2.jpg',
//               fit: BoxFit.cover,
//               height: 150,
//               width: double.maxFinite,
//             ),
//           ),
//           Positioned(
//             bottom: 50,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Title 001',
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline5!
//                         .copyWith(fontSize: 16),
//                   ),
//                   Container(
//                     width: 350,
//                     child: Text(
//                       'Manage your interface using view controllers and facilitate',
//                       style: Theme.of(context)
//                           .textTheme
//                           .bodyText2!
//                           .copyWith(fontSize: 12),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text('View more'),
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20))),
//                       foregroundColor: MaterialStateProperty.all(Colors.white),
//                       backgroundColor: MaterialStateProperty.all(Colors.black),
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.favorite_outline_sharp),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 10,
//             left: 150,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// );
