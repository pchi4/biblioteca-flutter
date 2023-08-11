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
      body: ListView(children: const [
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
                    width: 140,
                    image: NetworkImage(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                  ),
                ),
                SizedBox(
                  width: 260,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          nome,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const InfoPublication(
                            'Autores', 'Cap PM Rogério Silva Pereira'),
                        const InfoPublication('Ano de publicação', '2016'),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    child: const Text('Download'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    child: const Text('Detalhes'),
                    onPressed: () {/* ... */},
                  ),
                  const SizedBox(width: 8),
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

  const InfoPublication(this.titulo, this.description, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 3.0, 0, 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Icon(Icons.person),
          Text(
            '$titulo : $description',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
