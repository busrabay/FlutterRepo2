import 'package:carousel_slider/carousel_slider.dart';
import 'package:event_workshops/Users.dart';
import 'package:event_workshops/container.dart';
import 'package:flutter/material.dart';
import 'myCarousel.dart';
//import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  User selectedUser = User.myUsers.first;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          "Popular",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 21,
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.left,
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                height: 280.0,
              ),
              items: User.myUsers.map((i) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: MyCarousel(
                    user: i,
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                "All Consultans",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 21,
                ),
              ),
            ),
            ...User.myUsers.map(
              (e) => Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: MyContainer(user: e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
