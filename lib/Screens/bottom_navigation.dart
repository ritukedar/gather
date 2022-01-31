import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gather/Screens/homepage.dart';
import 'package:gather/Screens/trending_events.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  //New
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.blueGrey.shade300,
          selectedItemColor: Colors.blue,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/path.png",
                scale: 5,
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/person.png",
                scale: 5,
              ),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/bell.png",
                scale: 5,
              ),
              label: 'Camera',
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex), //New
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _pages = <Widget>[
    HomePage(),
    TreandingEvents(),
    Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: Image.asset("assets/images/coming_soon.gif"))),
    Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: Image.asset("assets/images/coming_soon.gif"))),
    Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: Image.asset("assets/images/coming_soon.gif"))),
  ];
}
