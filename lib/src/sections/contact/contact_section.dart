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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCardWidget(iconSrc: "assets/images/skype.png", color: Color(0xFF5433FF), name: "@efraincode", press: (){},),
              SocialCardWidget(iconSrc: "assets/images/whatsapp.png", color: Color(0xFFA5FECB), name: "+54 9381169411", press: (){},),
              SocialCardWidget(iconSrc: "assets/images/messanger.png", color: Color(0xFF20BDFF), name: "Efrain May", press: (){},),
            ],
          )
        ],
      ),
    );
  }
}

class SocialCardWidget extends StatefulWidget {
  
  const SocialCardWidget({
    Key key, 
    this.iconSrc, 
    this.name, 
    this.color,
    this.press,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  _SocialCardWidgetState createState() => _SocialCardWidgetState();
}

class _SocialCardWidgetState extends State<SocialCardWidget> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value){
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2, horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if(isHover)kDefaultShadow]
          ),
          child: Row(
            children: <Widget>[
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(width: kDefaultPadding),
              Text(widget.name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}