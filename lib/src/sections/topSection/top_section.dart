import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/components/efraincode_picture.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/components/logo_blur_titlte_box.dart';

class TopSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: 700,
        minHeight: 700
      ),
      width: double.infinity,
      //Aui va la imagen de logo
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBoxTitle(size: size),
            Positioned(
              right: 0,
              child: EfrainCodePicture(),
            ),
            Positioned(
              bottom: 0,
              child: Menu(),
            )
          ],
        ),
      ),
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Services",
    "Portafolio",
    "Testimonial",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length, 
          (index) => buildMenuItems(index)
        ),
      ),
    );
  }

  Widget buildMenuItems(int index) => InkWell(
    onTap: (){
      setState(() {
        selectedIndex = index;
      });
    },
    child: Container(
      constraints: BoxConstraints(minWidth: 122),
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            menuItems[index].toUpperCase(),
            style: TextStyle(
              fontSize: 22,
              color: kTextColor
            ),  
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: selectedIndex == index ? -2 : -32,
            child: Image.asset("assets/images/Hover.png"),
          )
        ],
      ),
    ),
  );
}