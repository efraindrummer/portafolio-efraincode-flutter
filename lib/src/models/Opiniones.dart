import 'package:flutter/material.dart';

class Opiniones {
  final String name, review, userPic;
  final int id;
  final Color color;

  Opiniones({this.name, this.review, this.userPic, this.id, this.color});
}

// List of demo Opinioness
List<Opiniones> opiniones = [
  Opiniones(
    id: 1,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFFFF3DD),
  ),
  Opiniones(
    id: 2,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFD9FFFC),
  ),
  Opiniones(
    id: 3,
    name: "Ronald Thompson",
    review: review,
    userPic: "assets/images/people.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';