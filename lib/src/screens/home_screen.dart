import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/constantes.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/about/about.section.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/contact/contact_section.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/feedback/feedback_section.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/service/service_section.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/top_section.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/work_recent/work_recent.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1300ce),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top section screens
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            About(),
            ServiceSection(),
            WorkRecent(),
            FeedBackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            //Sized box Separation
            SizedBox(height: 500),
          ],
        ),
      ),
    );
  }
}