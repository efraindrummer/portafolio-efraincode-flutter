import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/TrabajosRecientes.dart';

class RecentCardWidget extends StatelessWidget {
  
  const RecentCardWidget({
    Key key, 
    this.index,
  }) : super(key: key);

  final int index;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 540,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [kDefaultShadow]
      ),
      child: Row(
        children: <Widget>[
          Image.asset(trabajosRecientes[index].image),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(trabajosRecientes[index].category.toUpperCase()),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(trabajosRecientes[index].title, style: Theme.of(context).textTheme.headline5.copyWith(
                    height: 1.5
                  ),),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    "Ver Detalles", 
                    style: TextStyle(
                      decoration: TextDecoration.underline
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
