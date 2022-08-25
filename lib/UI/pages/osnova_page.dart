import 'package:flutter/material.dart';
import 'package:phoneflutter/UI/wigets/osnova_wigets.dart';


class osnova_red extends StatelessWidget {
  const osnova_red({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Основное'),
      ),
      body: Row(
        children: [
          // redaktor(),
          redaktor_osn(),
        ],
        //children
      ),
    );
  }
}