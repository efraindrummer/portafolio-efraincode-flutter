import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';

class AboutTextSign extends StatelessWidget {
  const AboutTextSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Conoce \nmi Historia", style: Theme.of(context).textTheme.headline2.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.black
          )
        ),
        SizedBox(height: kDefaultPadding * 2),
        Image.asset("assets/images/sign.png")
      ],
    );
  }
}