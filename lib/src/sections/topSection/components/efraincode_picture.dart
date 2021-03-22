import 'package:flutter/material.dart';

class EfrainCodePicture extends StatelessWidget {
  const EfrainCodePicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 639,
        maxHeight: 860
      ),
      child: Image.asset("assets/images/efraincode.png"),
    );
  }
}