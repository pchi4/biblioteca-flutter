import 'package:flutter/material.dart';

class InfoPublication extends StatelessWidget {
  final String titulo;
  final String description;

  const InfoPublication(this.titulo, this.description, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          const Icon(Icons.person),
          Expanded(
            child: Text(
              '$titulo: $description',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              maxLines: 1,
            ),
          )
        ],
      ),
    );
  }
}
