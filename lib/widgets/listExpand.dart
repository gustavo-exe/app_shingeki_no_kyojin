import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shingeki_no_kyojin/pages/detailPage.dart';

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
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Ajercito",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
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
        ),
        Row(
          children: [
            Column(
              children: [
                cardPersonaje(
                    "mikasa",
                    "Mikasa Ackerman, una experta en todas las áreas. Su talento no tiene precedentes y es considerada una de los mejores alumnos de nuestra historia",
                    "A+",
                    "176 cm",
                    "68 kg",
                    "Soldado de élite")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  cardPersonaje(
                      "eren",
                      "Eren Jaeger, aunque carece de algún talento excepcional, mejoró sus calificaciones a través de una gran perseverancia, además posee una excepcional determinación.",
                      "A",
                      "183 cm",
                      "63 kg",
                      "Soldado de élite")
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  cardPersonaje(
                      "levi",
                      "Levi es un genio en el uso de las Maniobra Tridimensionales. Muchos civiles han comentado que el es tan poderoso como 100 soldados juntos.",
                      "A++",
                      "160 cm",
                      "65 kg",
                      "Soldado")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8),
              child: Column(
                children: [
                  cardPersonaje(
                      'hange',
                      "Hange era muy apasionada por su trabajo. Era hiperactiva, solía absorberse en el trabajo sin pensar en su seguridad, más que en la documentación de las experiencias.",
                      "A+",
                      "170 cm",
                      "60 kg",
                      "Comandante")
                ],
              ),
            )
          ],
        )
      ]),
    );
  }

  Widget cardPersonaje(String nombre, String descripcion, String rango,
      String altura, String peso, String ocupacion) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return DetailPage(
                theColor: Color.fromARGB(255, 80, 121, 178),
                image: "assets/personajes/$nombre.png",
                theNombre: nombre,
                description: descripcion,
                peso: peso,
                ocupacion: ocupacion,
                rango: rango,
                altura: altura);
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.black12),
        height: 210,
        width: (widthPantalla - (48)) * 0.50,
        child: Column(children: [
          Container(
              //decoration: const BoxDecoration(boxShadow: BoxShadow(color: Colors.red, blurRadius: 8)),
              child: ClipRRect(
                  child: Image.asset(
            "assets/personajes/$nombre.png",
            fit: BoxFit.cover,
            height: 180,
          ))),
          Container(
            width: (widthPantalla - (48)) * 0.50,
            padding:
                const EdgeInsets.only(top: 4, bottom: 4, right: 4, left: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2), color: Colors.black12),
            child: Text(
              nombre[0].toUpperCase() + nombre.substring(1),
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          )
        ]),
      ),
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
