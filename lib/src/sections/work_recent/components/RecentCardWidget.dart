import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/TrabajosRecientes.dart';

class RecentCardWidget extends StatefulWidget {
  
  const RecentCardWidget({
    Key key, 
    this.index, 
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentCardWidgetState createState() => _RecentCardWidgetState();
}

class _RecentCardWidgetState extends State<RecentCardWidget> {
  
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isHover) kDefaultShadow]
        ),
        child: Row(
          children: <Widget>[
            Image.asset(trabajosRecientes[widget.index].image),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(trabajosRecientes[widget.index].category.toUpperCase()),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(trabajosRecientes[widget.index].title, style: Theme.of(context).textTheme.headline5.copyWith(
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
      ),
    );
  }
}
