import 'package:CyberMart/models/Store.dart';
import 'package:flutter/material.dart';

class Categorypage extends StatefulWidget {
  final String title;
  final String image;
  final String tag;

  const Categorypage({Key key, this.title, this.image, this.tag})
      : super(key: key);

  @override
  _CategorypageState createState() => _CategorypageState();
}

class _CategorypageState extends State<Categorypage> {
  List<Stores> stores = [
    Stores(id: '1', name: "Mochi", image: "assets/images/mochi.jpg"),
    Stores(id: '2', name: "Solebrity", image: "assets/images/solebrity.jpg"),
    Stores(id: '3', name: "Store 3", image: "assets/images/solebrity.jpg"),
    Stores(id: '3', name: "Store 3", image: "assets/images/solebrity.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag,
              child: Material(
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image), fit: BoxFit.cover)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.0),
                        ],
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GridView.count(
              physics: ClampingScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              children: stores.map((stores) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Expanded(
                          child: Image(
                            image: AssetImage(stores.image),
                          ),
                        ),
                      ),
                      Text(stores.name),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
