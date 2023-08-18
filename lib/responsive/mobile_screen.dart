import 'package:flutter/material.dart';
import '../components/card.dart';
import '../components/header.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("image/background.png"), fit: BoxFit.cover),
        ),
        child: ListView(children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Header(),
          ),
          Cards('Guia de policiamento',
              'Lorem ipsum é simplesmente uma simulção de texto da indústria tipográfica e de impressos'),
          Cards('Guia de policiamento',
              'Lorem ipsum é simplesmente uma simulção de texto da indústria tipográfica e de impressos'),
          Cards('Guia de policiamento',
              'Lorem ipsum é simplesmente uma simulção de texto da indústria tipográfica e de impressos'),
        ]),
      ),
    );
  }
}
