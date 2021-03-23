import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';

class ExperienceBox extends StatelessWidget {
  const ExperienceBox({
    Key key, this.numberExperience,
  }) : super(key: key);

  final String numberExperience;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10)
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFF16BFFD),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: Color(0xFF928DAB).withOpacity(0.25)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                Text(
                  numberExperience, 
                  style: TextStyle(
                    fontSize: 100, 
                    fontWeight: FontWeight.bold,
                    foreground: 
                      Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Color(0xFF2C3E50).withOpacity(0.5),
                      shadows: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Color(0xFF928DAB).withOpacity(0.5)
                        )
                      ]      
                  ),
                ),
                Text(
                  numberExperience, 
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 100,
                    color: Colors.white
                  ),
                )
              ],
            ),
            SizedBox(height: kDefaultPadding / 2),
            Text("Años de experiencia", style: TextStyle(color: Colors.white, fontSize: 18),)
          ],
        ),
      ),
    );
  }
}