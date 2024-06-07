import 'package:flutter/material.dart';
import 'package:grocery/screen/header_parts.dart';
import 'package:grocery/screen/items_display.dart';
import 'package:grocery/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // For Bottom Navigation Bar........
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          selectedItemColor: primaryColors,
          unselectedItemColor: Colors.green[200],
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
          ]),
      body: ListView(
        children: const [
          SizedBox(
            height: 15.0,
          ),
          // For Header Part
          HeaderParts(),

          //for Body Parts

          ItemsDisplay(),
        ],
      ),
    );
  }
}
