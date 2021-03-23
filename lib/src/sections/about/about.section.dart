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
          Container(
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            height: 240,
            width: 255,
            decoration: BoxDecoration(
              color: Color(0xFFF7E8FF),
              borderRadius: BorderRadius.circular(10)
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0xFF16BFFD),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 6,
                    color: Color(0xFF928DAB).withOpacity(0.25)
                  )
                ]
              ),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Text(
                        "08", 
                        style: TextStyle(
                          fontSize: 100, 
                          fontWeight: FontWeight.bold,
                          foreground: 
                            Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Color(0xFF2C3E50).withOpacity(0.5),
                            shadows: [
                              BoxShadow(
                                offset: Offset(0, 5),
                                blurRadius: 10,
                                color: Color(0xFFA600FF).withOpacity(0.5)
                              )
                            ]      
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
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

