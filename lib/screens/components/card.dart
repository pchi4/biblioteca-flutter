import 'package:first_project/models/obra.dart';
import 'package:flutter/material.dart';
import 'info.dart';
import '../details_page.dart';

class Cards extends StatelessWidget {
  final String nome;
  final String description;
  final String autores;
  final String download;
  final String anoPublicacao;
  final String imgPath;

  const Cards(this.nome, this.description, this.anoPublicacao, this.autores,
      this.download, this.imgPath,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newObject = Obra(
        titulo: nome,
        tipo: 'livro',
        anoPublicacao: anoPublicacao,
        ativa: true,
        autor: autores,
        cadastradoPor: 'Admin',
        capa: imgPath,
        categoria: 'teste',
        dataDeCadastro: 'teste',
        documento: 'teste',
        downoloads: download,
        sinopse: description);

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
                  child: Image(
                    width: 160,
                    image: AssetImage(imgPath),
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          nome,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 24),
                        ),
                        InfoPublication(
                          'Autores',
                          autores,
                        ),
                        InfoPublication(
                          'Ano de publicação',
                          anoPublicacao,
                        ),
                        InfoPublication(
                          'Downloads',
                          download,
                        ),
                        Text(
                          description,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ]),
                ))
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
                      var materialPageRoute = MaterialPageRoute(
                        settings: RouteSettings(arguments: {newObject}),
                        builder: (context) => const DetailsScreen(),
                      );
                      Navigator.push(
                        context,
                        materialPageRoute,
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
