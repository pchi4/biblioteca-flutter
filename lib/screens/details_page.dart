import 'package:flutter/material.dart';
import 'components/info.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final dataParams = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Detalhes'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print(dataParams);
          },
          child: const Text('Pressed'),
        ),
      ),
    );
  }
}

// Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: const Text('Detalhes'),
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/image/background.png"),
//               fit: BoxFit.cover),
//         ),
//         child: Center(
//           child: Expanded(
//               child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Card(
//               margin: const EdgeInsets.all(10.0),
//               color: Color.fromARGB(255, 236, 195, 71),
//               child: Column(
//                 children: <Widget>[
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Image(
//                           width: 80,
//                           image: AssetImage('assets/image/livro.jpeg'),
//                         ),
//                       ),
//                       Flexible(
//                         child: Text(
//                           'Programa de Policiamento na Bahia',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                               fontSize: 26, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.all(10.0),
//                     child: Text(
//                       'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w200,
//                       ),
//                       textAlign: TextAlign.justify,
//                     ),
//                   ),
//                   InfoPublication('Autores', 'Cap Silva Ramos, Camila Santos'),
//                   InfoPublication('Ano de publicação:', '2022'),
//                   InfoPublication('Assuntos', 'Policiamento, programas'),
//                   InfoPublication('Cadastrado em', '22/05/2020 '),
//                   InfoPublication('Cadastrado por', 'Cap Silva Ramos'),
//                   InfoPublication('Downloads', '21'),
//                   ElevatedButton(
//                     onPressed: () {
//                       print(dataParams);
//                     },
//                     child: const Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('Download'),
//                           Icon(Icons.download),
//                         ]),
//                   ),
//                 ],
//               ),
//             ),
//           )),
//         ),
//       ),
//     );


// Card(
//         child: Column(
//           children: [
//             const Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Image(
//                     width: 80,
//                     image: AssetImage('assets/image/livro.jpeg'),
//                   ),
//                 ),
//                 Flexible(
//                   child: Text(
//                     'Programa de Policiamento na Bahia',
//                     textAlign: TextAlign.start,
//                     style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ],
//             ),
//             const Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w200,
//                 ),
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//             const InfoPublication('Autores', 'Cap Silva Ramos, Camila Santos'),
//             const InfoPublication('Ano de publicação:', '2022'),
//             const InfoPublication('Assuntos', 'Policiamento, programas'),
//             const InfoPublication('Cadastrado em', '22/05/2020 '),
//             const InfoPublication('Cadastrado por', 'Cap Silva Ramos'),
//             const InfoPublication('Downloads', '21'),
//             ElevatedButton(
//               onPressed: () {
//                 print(dataParams);
//               },
//               child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Download'),
//                     Icon(Icons.download),
//                   ]),
//             ),
//           ],
//         ),
//       ),),