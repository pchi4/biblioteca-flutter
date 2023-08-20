class Obra {
  String titulo;
  String anoPublicacao;
  String tipo;
  String autor;
  String categoria;
  String documento;
  String capa;
  bool ativa;
  String sinopse;
  String downoloads;
  String cadastradoPor;
  String dataDeCadastro;

  Obra(
      {required this.titulo,
      required this.tipo,
      required this.anoPublicacao,
      required this.ativa,
      required this.autor,
      required this.cadastradoPor,
      required this.capa,
      required this.categoria,
      required this.dataDeCadastro,
      required this.documento,
      required this.downoloads,
      required this.sinopse});
}
