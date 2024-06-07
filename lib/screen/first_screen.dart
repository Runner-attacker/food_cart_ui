import 'package:flutter/material.dart';
import 'package:grocery/screen/home_page.dart';
import 'package:grocery/utils/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 120.0,
            ),
            Image.asset(
              "assets/fourth.png",
              height: 300,
              width: 300,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Fast delivery at \n your doorstep",
                style: TextStyle(
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Home delievery and online reservation \n system for resturants & cafe",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            Container(
              width: double.infinity,
              height: 55,
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ));
                  },
                  child: const Text(
                    "Let's Explore",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: primaryColors,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
