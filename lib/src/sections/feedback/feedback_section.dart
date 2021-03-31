import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/Opiniones.dart';

class FeedBackSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: <Widget>[
          SectionTitle(
            title: "Recomendaciones Recibidas",
            subTitle: "Opiniones de clientes satisfechos",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(opiniones.length, (index) => FeedbackCard(index: index,)),
          )
        ],
      ),
    );
  }
}

class FeedbackCard extends StatelessWidget {
  
  const FeedbackCard({
    Key key, this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 3),
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        color: opiniones[index].color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [kDefaultShadow]
      ),
      child: Column(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0, -55),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 10,
                ),
                image: DecorationImage(
                  image: AssetImage(opiniones[index].userPic)
                )
              ),
            ),
          ),
          Text(
            opiniones[index].review, 
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
    );
  }
}