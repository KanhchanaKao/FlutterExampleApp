import 'package:flutter/material.dart';

class HistoryCardItem extends StatelessWidget {
  const HistoryCardItem(
      {key,
      @required this.history_title,
      @required this.history_desc,
      @required this.history_cover,
      @required this.history_star})
      : super(key: key);
  final history_title;
  final history_desc;
  final history_cover;
  final history_star;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          width: double.infinity,
          height: 100,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: ClipRRect(
                  child: Image.asset(
                    history_cover,
                    fit: BoxFit.cover,
                    width: 150,
                    height: 100,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 170,
                child: Text(
                  history_title,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
              Positioned(
                top: 50,
                left: 170,
                child: Container(
                  width: 200,
                  height: 40,
                  child: Text(
                    history_desc,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 160,
                child: ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
