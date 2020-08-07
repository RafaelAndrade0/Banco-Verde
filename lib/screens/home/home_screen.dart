import 'package:banco_verde/screens/home/widgets/home_body.dart';
import 'package:banco_verde/screens/home/widgets/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HomeHeader(),
              HomeBody(),
            ],
          ),
        ),
      ),
    );
  }
}
