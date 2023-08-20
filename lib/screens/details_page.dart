import 'package:flutter/material.dart';
import 'components/info.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Detalhes'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/image/background.png"),
              fit: BoxFit.cover),
        ),
        child: const Center(
          child: Expanded(
              child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Card(
              margin: EdgeInsets.all(10.0),
              color: Color.fromARGB(255, 236, 195, 71),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                          width: 80,
                          image: AssetImage('assets/image/livro.jpeg'),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          'Programa de Policiamento na Bahia',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  InfoPublication('Autores', 'Cap Silva Ramos, Camila Santos'),
                  InfoPublication('Ano de publicação:', '2022'),
                  InfoPublication('Assuntos', 'Policiamento, programas'),
                  InfoPublication('Cadastrado em', '22/05/2020 '),
                  InfoPublication('Cadastrado por', 'Cap Silva Ramos'),
                  InfoPublication('Downloads', '21'),
                  ElevatedButton(
                    onPressed: null,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Download'),
                          Icon(Icons.download),
                        ]),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
