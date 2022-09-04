import 'package:flutter/material.dart';
import 'package:phoneflutter/UI/pages/contact_page.dart';
import 'package:phoneflutter/UI/pages/osnova_page.dart';

class voiti_red extends StatelessWidget {
  const voiti_red({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      //alignment: Alignment.topCenter,
      color: Colors.white,
      //padding: const EdgeInsets.all(10.0),
      child: Row(children: [
        Column(
          children: [
            ElevatedButton.icon(
              //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              //color: Colors.white,
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return osnova_red();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
              icon: Text(
                "Основное                                         ",
                style: TextStyle(fontSize: 20),
              ),
              label: Icon(
                Icons.person,
                size: 30,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return contact_red();
                }));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
              icon: Text(
                "Контакты                                         ",
                style: TextStyle(fontSize: 20),
              ),
              label: Icon(
                Icons.account_circle,
                size: 30,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
              icon: Text(
                "Интересы                                         ",
                style: TextStyle(fontSize: 20),
              ),
              label: Icon(
                Icons.child_care,
                size: 30,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
