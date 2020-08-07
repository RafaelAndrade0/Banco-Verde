import 'package:flutter/material.dart';

class OperationItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const OperationItem({
    @required this.icon,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            // boxShadow: [
            //   BoxShadow(
            //     blurRadius: 3,
            //     spreadRadius: 3,
            //     color: Colors.black26,
            //   ),
            // ],
            // border: Border.all(
            //   width: 3,
            //   color: Colors.black,
            // ),
          ),
          child: Icon(
            icon,
            color: Colors.green,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white.withOpacity(.8),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
