import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/contact/components/SocialCard.dart';

class ContactSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 500,
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
          ),
          ContactBox()
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1110
      ),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), 
          topRight: Radius.circular(20) 
        )
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCardWidget(iconSrc: "assets/images/skype.png",     color: Color(0xFF5433FF), name: "@efraincode",    press: (){},),
              SocialCardWidget(iconSrc: "assets/images/whatsapp.png",  color: Color(0xFFA5FECB), name: "+54 9381169411", press: (){},),
              SocialCardWidget(iconSrc: "assets/images/messanger.png", color: Color(0xFF20BDFF), name: "Efrain May",     press: (){},),
            ],
          )
        ],
      ),
    );
  }
}

