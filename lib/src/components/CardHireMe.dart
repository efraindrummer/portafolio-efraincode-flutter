import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';

class CardHireMe extends StatelessWidget {
  const CardHireMe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow]
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/email.png",
            height: 80,
            width: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 80, 
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "comenzando un nuevo proyecto".toUpperCase(), 
                  style: TextStyle(
                    fontSize: 38, 
                    fontWeight: FontWeight.bold, 
                    fontStyle: FontStyle.italic
                  ),
                ),
                SizedBox(height: kDefaultPadding / 2),
                Text(
                  "obtenga un presupuesto estimado para el nuevo proyecto".toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w200
                  ),
                )
              ],
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Row(
              children: <Widget>[
                Image.asset("assets/images/hand.png"),
                Text("Contratame!"),
              ],
            ),
          )
        ],
      ),
    );
  }
}