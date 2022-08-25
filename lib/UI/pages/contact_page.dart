import 'package:flutter/material.dart';
import 'package:phoneflutter/UI/wigets/contact_wigets.dart';


class contact_red extends StatelessWidget {
  const contact_red({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Контакты'),
      ),
      body: Row(
        children: [
          // redaktor(),
          redaktor_Con(),
        ],
        //children
      ),
    );
  }
}