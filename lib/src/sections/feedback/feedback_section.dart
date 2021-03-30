import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/Opiniones.dart';

class FeedBackSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: <Widget>[
          SectionTitle(
            title: "Recomendaciones Recibidas",
            subTitle: "Opiniones de clientes satisfechos",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
              color: opiniones[0].color,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [kDefaultShadow]
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 10,
                    ),
                    image: DecorationImage(
                      image: AssetImage(opiniones[0].userPic)
                    )
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}