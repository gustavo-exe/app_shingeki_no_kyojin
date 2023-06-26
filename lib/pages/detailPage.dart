import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage(
      {Key? key,
      required this.theColor,
      required this.image,
      required this.theNombre,
      required this.description,
      required this.rango,
      required this.altura,
      required this.peso,
      required this.ocupacion});

  final Color theColor;
  final String image;
  final String theNombre;
  final String description;
  final String ocupacion;
  final String rango;
  final String altura;
  final String peso;

  final tagStyle = const TextStyle(color: Colors.white60, fontSize: 18);

  @override
  Widget build(BuildContext context) {
    debugPrint(image);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [theColor, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 22.0),
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: SizedBox(
                  child: Image.asset(image),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                      padding: const EdgeInsets.only(
                          top: 8, left: 8, right: 8, bottom: 16),
                      decoration: const BoxDecoration(color: Colors.black),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        theNombre[0].toUpperCase() + theNombre.substring(1),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 38,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      )))
            ],
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.black),
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    description,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Text('Ocupación: $ocupacion', style: tagStyle),
                  ],
                ),
                Row(
                  children: [
                    Text('Rango: $rango', style: tagStyle),
                  ],
                ),
                Row(
                  children: [
                    Text('Altura: $altura', style: tagStyle),
                  ],
                ),
                Row(
                  children: [
                    Text('Peso: $peso', style: tagStyle),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
