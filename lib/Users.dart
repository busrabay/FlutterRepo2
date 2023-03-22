//import 'package:flutter/material.dart';

class User {
  final String title;
  final String comment;
  final String day;
  final double time;
  final String minute;
  final int participant;
  final String image;

  User(this.title, this.comment, this.day, this.time, this.minute,
      this.participant, this.image);
  static final myUsers = <User>[
    User(
        "Peony",
        "Peony flower symbolizes compassion. The peony flower story comes from Greek mythology. ",
        "Sunday",
        10.00,
        "20.Min",
        900,
        "assets/image10.jpg"),
    User(
        "Rose",
        "The rose is a perennial flowering plant in the Rosacea family. ",
        "Friday",
        18.00,
        "30.Min",
        300,
        "assets/gül.jpg"),
    User(
        "Tulip",
        "Tulip, a species of lily family, is a flower suitable for growing both in pots and in garden soil.",
        "Tuesday",
        01.00,
        "60.Min",
        150,
        "assets/lale.jpg"),
    User(
        "Orchid",
        "The meaning of the orchid flower is love, happiness, love. ",
        "Sunday",
        16.00,
        "50.Min",
        60,
        "assets/orkide.jpg"),
  ];
}
