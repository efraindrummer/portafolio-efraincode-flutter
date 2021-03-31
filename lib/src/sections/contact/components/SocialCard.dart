import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';

class SocialCardWidget extends StatefulWidget {
  
  const SocialCardWidget({
    Key key, 
    this.iconSrc, 
    this.name, 
    this.color,
    this.press,
  }) : super(key: key);

  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  _SocialCardWidgetState createState() => _SocialCardWidgetState();
}

class _SocialCardWidgetState extends State<SocialCardWidget> {

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        onTap: widget.press,
        onHover: (value){
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2, 
            horizontal: kDefaultPadding * 1.5
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if(isHover) kDefaultShadow
            ]
          ),
          child: Row(
            children: <Widget>[
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(width: kDefaultPadding),
              Text(
                widget.name, 
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 18
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}