import 'package:first_project/repositories/obra_repositories.dart';
import 'package:flutter/material.dart';
import '../screens/components/card.dart';
/* import '../screens/components/header.dart';  */

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataObras = ObraRepositories.obras;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Biblioteca Digital'),
        actions: [
          ElevatedButton(onPressed: () {}, child: const Text('Saiba mais...'))
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/background.png"),
                  fit: BoxFit.cover),
            ),
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Cards(
                    dataObras[index].titulo,
                    dataObras[index].sinopse,
                    dataObras[index].anoPublicacao,
                    dataObras[index].autor,
                    dataObras[index].downoloads,
                    dataObras[index].capa,
                  );
                },
                padding: const EdgeInsets.all(8),
                itemCount: dataObras.length),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
