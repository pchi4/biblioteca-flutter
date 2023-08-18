import 'package:flutter/material.dart';

class InfoPublication extends StatelessWidget {
  final String titulo;
  final String description;

  const InfoPublication(this.titulo, this.description, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Icon(Icons.person),
          Text(
            '$titulo $description',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
