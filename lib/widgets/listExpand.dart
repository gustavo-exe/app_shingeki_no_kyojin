import 'package:flutter/material.dart';

class ListExpand extends StatefulWidget {
  const ListExpand({Key? key}) : super(key: key);

  @override
  _ListExpandState createState() => _ListExpandState();
}

class _ListExpandState extends State<ListExpand> {
  double widthPantalla = 0;

  @override
  Widget build(BuildContext context) {
    widthPantalla = MediaQuery.of(context).size.width;

    return Expanded(
      child: ListView(padding: const EdgeInsets.all(16), children: [
        const Text(
          "Ajercito",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            cardEjercito("exploracion.png", "Cuerpo de Exploración", ""),
            cardEjercito("militar.png", "Policía Militar", ""),
            cardEjercito("guarnicion.png", "Tropas de Guarnición", ""),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 6, bottom: 6),
          child: Divider(
            thickness: 1,
            color: Colors.white30,
          ),
        )
      ]),
    );
  }

  Column cardEjercito(String image, String titulo, String subtitulo) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 4),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset("assets/ejercito/$image",
                width: widthPantalla * 0.30, fit: BoxFit.cover)),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 2),
        child: RichText(
            text: TextSpan(
                text: titulo,
                style: const TextStyle(fontSize: 12, color: Colors.white))),
      )
    ]);
  }
}
