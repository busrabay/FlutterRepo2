//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Users.dart';

class MyCarousel extends StatelessWidget {
  const MyCarousel({super.key, this.showBorder = false, required this.user});
  final bool showBorder;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border:
              showBorder ? Border.all(color: const Color(0xff787878)) : null,
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        ),
        child: Column(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                user.image,
                width: 340,
                height: 150,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              user.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            user.comment,
            style: const TextStyle(color: Color(0xff787878), fontSize: 13),
          ),
        ]));
  }
}
