import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca Digital',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Biblioteca Digital'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

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
                            'Autores', 'Cap PM Rogério Silva Pereira', 'person'),
                        const InfoPublication('Ano de publicação', '2016', 'person'),
                        const InfoPublication('130', 'Downloads', 'person'),
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
                    onPressed: () {/* ... */},
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

class InfoPublication extends StatelessWidget {
  final String titulo;
  final String description;
  final String iconsTitle;

  const InfoPublication(this.titulo, this.description, this.iconsTitle, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 3.0, 0, 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Icon(Icons.this.iconsTitle),
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
