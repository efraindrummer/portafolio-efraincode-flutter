import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';

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