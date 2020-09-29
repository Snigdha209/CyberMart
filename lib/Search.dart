import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
          hintText: "Search",
          suffixIcon: Material(
              elevation: 0.0,
              borderRadius: BorderRadius.circular(30.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              )),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.black)),
          hintStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
