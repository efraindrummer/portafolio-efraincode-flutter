import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/components/SectionTitle.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/models/Service.dart';

class ServiceSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: <Widget>[
          SectionTitle(
            title: "Mis Areas Fuertes", 
            subTitle: "Servicios Ofrecidos", 
            color: Color(0xFFFF0000),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(services.length, (index) => ServiceBoxCard(index: index,))
          ),
        ],
      ),
    );
  }
}

class ServiceBoxCard extends StatefulWidget {
  const ServiceBoxCard({
    Key key, 
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _ServiceBoxCardState createState() => _ServiceBoxCardState();
}

class _ServiceBoxCardState extends State<ServiceBoxCard> {

  bool isHover = false;
  Duration duration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value){
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if(isHover) kDefaultShadow]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.all(kDefaultPadding * 1.5),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  if(!isHover) BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.2)
                  )
                ]
              ),
              child: Image.asset(
                services[widget.index].image,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: kDefaultPadding),
            Text(services[widget.index].title, style: TextStyle(fontSize: 22),)
          ],
        ),
      ),
    );
  }
}