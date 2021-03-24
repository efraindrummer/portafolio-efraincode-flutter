import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/ButtonOutlined.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/DownloadButtonCV.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/about/components/about_section_text.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/about/components/about_text_sign.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/about/components/experience_box.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AboutTextSign(),
              Expanded(
                child: AboutTextSection(text: "Actualmente soy Desarrollador Web en tecnologias Javascript, esencialmente con Angular & React, Breve conocimiento de Backend con NodeJS & Php con Laravel.",),
              ),
              ExperienceBox(numberExperience: "02"),
              Expanded(
                child: AboutTextSection(text: "He participado en proyectos Web en la mayoria, actualmente busco dedicarme al Desarrollo Mobile en Dart & Flutter, ando en busca de un proyecto retador para subir de nivel mis Softs Skills!",),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonOutlined(
                imageSrc: "assets/images/hand.png", 
                text: "Contratame!", 
                press: (){},
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DownloadButtonCV(
                imageSrc: "assets/images/download.png",
                text: "Descarga mi CV",
                press: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}



