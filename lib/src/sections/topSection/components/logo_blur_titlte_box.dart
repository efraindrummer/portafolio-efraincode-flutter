import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/components/glass_content.dart';

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
        //Image.asset("assets/images/Logo.png"),
        Text("EFRAIN MAY", style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),),
        Spacer(),
        GlassContent(size: size),
        Spacer(flex: 3)
      ],
    );
  }
}