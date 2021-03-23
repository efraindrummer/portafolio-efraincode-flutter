import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/about/components/about_text_sign.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      child: Row(
        children: <Widget>[
          AboutTextSign(),
          Expanded(
            child: AboutTextSection(text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore sed consequuntur error repudiandae numquam deserunt quisquam, Lorem ipsum dolor sit amet, consectetur adipisicing elit.!",),
          ),
          Expanded(
            child: AboutTextSection(text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore sed consequuntur error repudiandae numquam deserunt quisquam, Lorem ipsum dolor sit amet, consectetur adipisicing elit.!",),
          ),
        ],
      ),
    );
  }
}

class AboutTextSection extends StatelessWidget {
  const AboutTextSection({
    Key key, this.text,
  }) : super(key: key);

  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w200,
          color: Colors.white,
          height: 2
        ),
      ),
    );
  }
}

