import 'package:flutter/cupertino.dart';

class Stores {
  final String id;
  final String category;
  final String name;
  final String description;
  final String image;

  Stores(
      {@required this.id,
      this.category,
      @required this.name,
      this.description,
      @required this.image});
}

class Store with ChangeNotifier {
  List<Stores> _items = [
    Stores(
        id: '1',
        name: "Mochi",
        description: 'Address: Subhash nagar,Jaipur ,Rajasthan',
        image: 'assets/images/mochi.jpeg'),
    Stores(
        id: '2',
        name: "Mochi",
        description: 'Address: Subhash nagar,Jaipur ,Rajasthan',
        image: 'assets/images/mochi.jpeg'),
    Stores(
        id: '3',
        name: "Mochi",
        description: 'Address: Subhash nagar,Jaipur ,Rajasthan',
        image: 'assets/images/mochi.jpeg'),
  ];
  List<Stores> get items {
    return [..._items];
  }
}
