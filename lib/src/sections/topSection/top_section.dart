import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/components/glass_content.dart';

class TopSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: 900,
        minHeight: 700
      ),
      width: double.infinity,
      /* decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/fondo-principal.png"),
        ),
      ), */
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBoxTitle(size: size),
            Positioned(
              right: 0,
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 639,
                  maxHeight: 860
                ),
                child: Image.asset("assets/images/efraincode.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LogoAndBlurBoxTitle extends StatelessWidget {
  const LogoAndBlurBoxTitle({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/Logo.png"),
        Spacer(),
        GlassContent(size: size),
        Spacer(flex: 3)
      ],
    );
  }
}
