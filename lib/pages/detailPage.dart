import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.theColor, required this.image});

  final Color theColor;
  final String image;

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
              )
            ],
          )
        ]),
      ),
    );
  }
}
