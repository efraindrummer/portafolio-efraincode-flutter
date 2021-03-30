import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/CardHireMe.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/TrabajosRecientes.dart';

class WorkRecent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      //height: 600,
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
          ),
          SizedBox(height: kDefaultPadding * 1.5),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(trabajosRecientes.length, (index) => RecentCardWidget(index: index)),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5)
        ],
      ),
    );
  }
}

class RecentCardWidget extends StatelessWidget {
  
  const RecentCardWidget({
    Key key, 
    this.index,
  }) : super(key: key);

  final int index;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 540,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [kDefaultShadow]
      ),
      child: Row(
        children: <Widget>[
          Image.asset(trabajosRecientes[index].image),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(trabajosRecientes[index].category.toUpperCase()),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(trabajosRecientes[index].title, style: Theme.of(context).textTheme.headline5.copyWith(
                    height: 1.5
                  ),),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    "Ver Detalles", 
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

