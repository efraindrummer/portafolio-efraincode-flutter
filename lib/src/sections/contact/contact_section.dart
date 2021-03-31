import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';

class ContactSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xFF5433FF),
            Color(0xFF20BDFF),
            Color(0xFFA5FECB)
          ]
        )
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(
            title: "Contactame",
            subTitle: "Consulta e Informate sobre Proyectos",
            color: Color(0xFF00d2ff),
          )
        ],
      ),
    );
  }
}