import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/Opiniones.dart';

class FeedbackCard extends StatefulWidget {
  
  const FeedbackCard({
    Key key, this.index,
  }) : super(key: key);

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {

  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      hoverColor: Colors.transparent,
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: opiniones[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isHover) kDefaultShadow]
        ),
        child: Column(
          children: <Widget>[
            Transform.translate(
              offset: Offset(0, -55),
              child: AnimatedContainer(
                duration: duration,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 10,
                  ),
                  boxShadow: [if(!isHover) kDefaultShadow],
                  image: DecorationImage(
                    image: AssetImage(opiniones[widget.index].userPic)
                  )
                ),
              ),
            ),
            Text(
              opiniones[widget.index].review, 
              style: TextStyle(
                color: kTextColor, 
                fontSize: 18, 
                fontWeight: FontWeight.w200,
                fontStyle: FontStyle.italic,
                height: 1.5
              )
            ),
            SizedBox(height: kDefaultPadding * 2),
            Text(
              "Ronald Thompson", 
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}