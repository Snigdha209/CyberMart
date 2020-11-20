import 'package:CyberMart/models/Store.dart';
import 'package:CyberMart/pages/Selectshops.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Details extends StatefulWidget {
  final shop_det_name;
  final shop_det_image;
  final shop_det_no;

  Details({
    this.shop_det_name,
    this.shop_det_image,
    this.shop_det_no,
  });
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.black,
        title: Text("CyberMart"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.favorite, color: Colors.white), onPressed: null),
          new IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: null)
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.black,
                child: Image.asset(
                  widget.shop_det_image,
                ),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.shop_det_name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          widget.shop_det_no,
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          new ListTile(
            title: new Text(
              "Store Details",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: new Text(
              "ADDRESS: Mochi , XYZ market                                                       ABC Nagar                                                                                        Jaipur , Rajasthan",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
                child: new Text(
                  "Contact no.: XXXXXXX342",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RaisedButton(
                  elevation: 5.0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Selectshops()),
                    );
                  },
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.white,
                  child: Text(
                    'Add to store',
                    style: TextStyle(
                      color: Color(0xFF527DAA),
                      letterSpacing: 1.5,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
              new IconButton(
                  icon: Icon(Icons.videocam),
                  onPressed: () async {
                    const url = 'https://meet.google.com/vud-gxav-tjz';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
              new IconButton(
                  icon: Icon(Icons.shop),
                  onPressed: () async {
                    const url =
                        'https://www.mochishoes.com/?utm_source=adyogi&utm_medium=google-search&utm_campaign=MOCH_3086_adyogi_Brand-Search_Engage&utm_source=adyogi&utm_medium=google-search&utm_campaign=MOCH_3086_adyogi_Brand-Search_Engage';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  })
            ],
          )
        ],
      ),
    );
  }
}
