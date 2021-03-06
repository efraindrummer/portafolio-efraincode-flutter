import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/Service.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/service/components/ServiceBoxCard.dart';

class ServiceSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: <Widget>[
          SectionTitle(
            title: "Mis Areas Fuertes", 
            subTitle: "Servicios Ofrecidos", 
            color: Color(0xFFFF0000),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(services.length, (index) => ServiceBoxCard(index: index,))
          ),
        ],
      ),
    );
  }
}