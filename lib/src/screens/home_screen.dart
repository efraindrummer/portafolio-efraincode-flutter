import 'package:flutter/material.dart';
import 'package:portatofio_efraindrummer_flutterwebb/src/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
          ],
        ),
      ),
    );
  }
}