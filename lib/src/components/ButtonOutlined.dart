import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';

class ButtonOutlined extends StatelessWidget {

  const ButtonOutlined({
    Key key, 
    this.imageSrc, 
    this.text, 
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: OutlinedButton(
            onPressed: press,
            child: Row(
              children: <Widget>[
                Image.asset(imageSrc, height: 50,),
                SizedBox(width: kDefaultPadding),
                Text(text, style: TextStyle(fontSize: 18, color: Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}