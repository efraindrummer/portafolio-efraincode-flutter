import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/components/efraincode_picture.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/components/logo_blur_titlte_box.dart';

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
              child: EfrainCodePicture(),
            )
          ],
        ),
      ),
    );
  }
}

