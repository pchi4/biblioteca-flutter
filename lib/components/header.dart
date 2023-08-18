import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      children: <Widget>[
        Image(
          width: 200,
          image: AssetImage('image/coger.png'),
        ),
        Text(
          'Biblioteca Digital - COGER',
          style:
              TextStyle(fontSize: 30, fontWeight: FontWeight.bold, height: 4),
        )
      ],
    ));
  }
}
