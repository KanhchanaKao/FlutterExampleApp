import 'package:efind_beta_1/screen/webview_screen.dart';
import 'package:flutter/material.dart';

// TODO https://flutter.dev/docs/cookbook/navigation/passing-data
class StoreDetailScreen extends StatefulWidget {
  final store_title;
  final store_description;
  final store_images;
  final store_phone;
  final store_address;
  final store_favorite;
  const StoreDetailScreen(
      {Key? key,
      this.store_title,
      this.store_description,
      this.store_images,
      this.store_phone,
      this.store_address,
      this.store_favorite})
      : super(key: key);

  @override
  _StoreDetailScreenState createState() => _StoreDetailScreenState();
}

class _StoreDetailScreenState extends State<StoreDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              Positioned(
                child: SizedBox(
                  child: ClipRRect(
                    // borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "assets/images/p1.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 25,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Stack(
              children: [
                Positioned(
                    child: Text(
                  'Title 001',
                  style: TextStyle(fontSize: 24),
                )),
                Positioned(
                    top: 50,
                    child: Container(
                      width: 400,
                      child: Text(
                        'prem ipsum dolor sit amet, conseteur sadipsscing elitr. sakdjqoijeqwnoiasdf,..asdfij',
                        style: TextStyle(fontSize: 15),
                      ),
                    )),
                Positioned(
                  child: ButtonBar(
                    children: [
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.2)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  children: [
                    Positioned(
                      child: Text(
                        'Tel',
                      ),
                    ),
                    Positioned(
                      left: 100,
                      child: Text('(+855)XX XXX XXX'),
                    ),
                    Positioned(
                      top: 30,
                      child: Text('Address'),
                    ),
                    Positioned(
                      top: 30,
                      left: 100,
                      child: Container(
                        width: 250,
                        child: Text(
                            'Kirirom, Phnom Srouch District, Kompong Speu Provicen, Cambodia'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                    ),
                    label: Text(
                      "Add to favorite",
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Report Page'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                  ),
                ],
              )),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WebViewScreen()));
              },
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      left: 15,
                      child: Icon(
                        Icons.facebook_rounded,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      top: 14,
                      left: 80,
                      child: Text(
                        'Facebook',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 10,
                      child: Icon(Icons.arrow_forward_ios,
                          size: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
