import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';

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
          SocialCardWidget()
        ],
      ),
    );
  }
}

class SocialCardWidget extends StatelessWidget {
  const SocialCardWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
        decoration: BoxDecoration(
          color: Color(0xFF5433FF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [kDefaultShadow]
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/skype.png",
              height: 80,
              width: 80,
            ),
            SizedBox(width: kDefaultPadding),
            Text("@efraincode")
          ],
        ),
      ),
    );
  }
}