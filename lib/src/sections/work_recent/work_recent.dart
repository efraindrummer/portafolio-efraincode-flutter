import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/CardHireMe.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';

class WorkRecent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png")
        ),
      ),
      child: Column(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0, -80),
            child: CardHireMe()
          ),
          SectionTitle(
            title: "Trabajos Recientes",
            subTitle: "Mis Areas Fuertes",
            color: Color(0xFFFFB100),
          )
        ],
      ),
    );
  }
}

