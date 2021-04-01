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
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm()
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: <Widget>[
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value){},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name"
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value){},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter Your Email Address"
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value){},
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select Project Type"
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value){},
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select Project Budget"
              ),
            ),
          ),
          SizedBox(
            //height: 300,
            child: TextFormField(
              onChanged: (value){},
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description"
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: GestureDetector(
                onTap: (){},
                child: Row(
                  children: <Widget>[
                    Image.asset("assets/images/contact_icon.png"),
                    SizedBox(width: 20),
                    Text("Contact Me!")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

