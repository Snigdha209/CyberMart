import 'package:CyberMart/pages/Details.dart';
import 'package:flutter/material.dart';

class Shoplist extends StatefulWidget {
  @override
  _ShoplistState createState() => _ShoplistState();
}

class _ShoplistState extends State<Shoplist> {
  var shop_list = [
    {
      "name": "Mochi",
      "picture": "assets/images/mochi.jpg",
      "shop_no": "123",
    },
    {
      "name": "Solebrity",
      "picture": "assets/images/solebrity.jpg",
      "shop_no": "124",
    },
    {
      "name": "Shoefac",
      "picture": "assets/images/shoefac.jpg",
      "shop_no": "125",
    },
    {
      "name": "ECCO",
      "picture": "assets/images/ecco.jpg",
      "shop_no": "126",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: shop_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            shop_name: shop_list[index]['name'],
            shop_image: shop_list[index]['picture'],
            shop_no: shop_list[index]['shop_no'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final shop_name;
  final shop_image;
  final shop_no;

  Single_product({this.shop_name, this.shop_image, this.shop_no});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: shop_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new Details(
                      shop_det_name: shop_name,
                      shop_det_image: shop_image,
                      shop_det_no: shop_no,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      shop_name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    title: Text(
                      shop_no,
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
                child: Image.asset(shop_image, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
