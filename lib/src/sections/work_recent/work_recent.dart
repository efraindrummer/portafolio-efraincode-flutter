import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';

class WorkRecent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png")
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
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
                        style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Text(
                        "obtenga un presupuesto estimado para el nuevo proyecto".toUpperCase(),
                        style: TextStyle(fontWeight: FontWeight.w200),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}