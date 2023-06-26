import 'package:flutter/material.dart';
import 'package:shingeki_no_kyojin/widgets/listExpand.dart';
import 'package:shingeki_no_kyojin/widgets/topHeader.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(153, 111, 81, 1),
      body: Column(
        children: const <Widget>[TopHeader(), ListExpand()],
      ),
    );
  }
}
