import 'package:CyberMart/pages/Profilepage.dart';
import 'package:CyberMart/pages/Selectshops.dart';
import 'package:CyberMart/shop.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  Bottomnavbar({Key key}) : super(key: key);

  @override
  _BottomnavbarState createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  PageController _pageController = PageController();
  List<Widget> _screen = [Shop(), Selectshops(), Profilepage()];

  int _currentindex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  void _onItemTapped(int currentTabindex) {
    _pageController.jumpToPage(currentTabindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screen,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _currentindex == 0 ? Colors.black : Colors.grey,
            ),
            title: Text("Home",
                style: TextStyle(
                  color: _currentindex == 0 ? Colors.black : Colors.grey,
                )),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: _currentindex == 1 ? Colors.black : Colors.grey,
              ),
              title: Text("Shops",
                  style: TextStyle(
                    color: _currentindex == 1 ? Colors.black : Colors.grey,
                  ))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: _currentindex == 2 ? Colors.black : Colors.grey,
              ),
              title: Text("Profile",
                  style: TextStyle(
                    color: _currentindex == 2 ? Colors.black : Colors.grey,
                  ))),
        ],
      ),
    );
  }
}
