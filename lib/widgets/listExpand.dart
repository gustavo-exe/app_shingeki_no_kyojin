import 'package:flutter/material.dart';

class ListExpand extends StatefulWidget {
  const ListExpand({Key? key}) : super(key: key);

  @override
  _ListExpandState createState() => _ListExpandState();
}

class _ListExpandState extends State<ListExpand> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: [
        Text("Episodios"),
        Row(
          children: [cardTeam("exploracion.png", "", "")],
        )
      ]),
    );
  }

  Column cardTeam(String image, String titulo, String subtitulo) {
    return Column(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset("assets/exploracion.png"))
    ]);
  }
}
