import 'package:flutter/material.dart';
import 'info.dart';
import '../screens/details_page.dart';

class Cards extends StatelessWidget {
  final String nome;
  final String description;

  const Cards(this.nome, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(8.0),
        color: Colors.blue[500],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const Image(
                    width: 160,
                    image: AssetImage('image/livro.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 280,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          nome,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 30),
                        ),
                        const InfoPublication(
                          'Autores',
                          'Cap PM Rogério Silva Pereira',
                        ),
                        const InfoPublication(
                          'Ano de publicação',
                          '2016',
                        ),
                        const InfoPublication(
                          '130',
                          'Downloads',
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ]),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    child: const Row(children: <Widget>[
                      Text('Download'),
                      Icon(Icons.download),
                    ]),
                    onPressed: () {/* ... */},
                  ),
                  ElevatedButton(
                    child: const Row(children: <Widget>[
                      Text('Detalhes'),
                      Icon(Icons.archive),
                    ]),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const DetailsScreen(title: 'Biblioteca Digital'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
