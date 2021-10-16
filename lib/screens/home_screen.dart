import 'package:efind_beta_1/screen/category_screen.dart';
import 'package:efind_beta_1/screen/favorite_screen.dart';
import 'package:efind_beta_1/screen/home_body.dart';
import 'package:efind_beta_1/screen/search_screen.dart';
import 'package:efind_beta_1/screen/setting_screen.dart';
import 'package:efind_beta_1/screen/user_profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/efind.png',
          scale: 4,
        ),
        // title: Text(
        //   'eFind',
        //   style: TextStyle(color: Colors.black, fontSize: 32.0),
        // ),

        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.category),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CategoryScreen()));
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchScreen()));
              })
        ],
        backgroundColor: Colors.grey[300],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[400],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedFontSize: 14.0,
        selectedFontSize: 14.0,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
      body: _selectedIndex == 0
          ? HomeBody()
          : _selectedIndex == 1
              ? FavoriteScreen()
              : _selectedIndex == 2
                  ? UserScreen()
                  : SettingScreen(),
    );
  }
}
