import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem(
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
      height: 380,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  card_cover,
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),

              Container(
                width: double.infinity,
                height: 50,
                child: ListTile(
                  // leading: Image.asset('images/p1.jpg'),
                  title: Text(
                    card_title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  card_desc,
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'View More',
                      style: TextStyle(fontSize: 14),
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
                      icon: Icon(Icons.favorite_border_outlined),
                      iconSize: 40.0,
                      onPressed: () {}),
                  IconButton(icon: Icon(Icons.star_outline), onPressed: () {}),
                  IconButton(icon: Icon(Icons.star_outline), onPressed: () {}),
                  IconButton(icon: Icon(Icons.star_outline), onPressed: () {}),
                ],
              ),
              // Image.asset('images/p1.jpg'),
              // Image.asset('images/p2.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
