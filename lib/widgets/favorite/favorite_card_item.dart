import 'package:flutter/material.dart';

class FavoriteCardItem extends StatelessWidget {
  const FavoriteCardItem(
      {key,
      @required this.card_title,
      @required this.card_desc,
      @required this.card_cover})
      : super(key: key);

  final String card_title;
  final String card_desc;
  final String card_cover;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  card_cover,
                  fit: BoxFit.cover,
                  width: 150,
                  height: 200,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    card_title,
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    card_desc,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'View More',
                          style: TextStyle(fontSize: 12),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // background
                          onPrimary: Colors.white,
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(24.0),
                          ), // foreground
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.favorite),
                          iconSize: 40.0,
                          onPressed: () {}),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
