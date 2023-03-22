import 'dart:io';

import 'package:event_workshops/Users.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 235,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff1C1C1C), width: 2),
        borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                user.image,
                width: 318,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              user.title,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 30,
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              //textAlign: TextAlign.left,
              user.comment,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  "${user.day}-${user.time}-${user.minute}",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xff787878)),
                ),
              ),
              SizedBox(
                width: 30,
                height: 20,
              ),
              Icon(
                Icons.person_2,
                color: Colors.grey,
              ),
              SizedBox(
                width: 6,
                height: 20,
              ),
              Text(
                user.participant.toString(),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff787878),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
