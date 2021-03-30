import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';

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
            subTitle: "Testimonios de clientes satisfechos",
            color: Color(0xFF00B1FF),
          )
        ],
      ),
    );
  }
}