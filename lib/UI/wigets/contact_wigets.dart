import 'package:flutter/material.dart';

class redaktor_Con extends StatelessWidget {
  const redaktor_Con({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Row(children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3, left: 65),
                      child: Text(
                        "Телефон:",
                        style: TextStyle(fontSize:  17),
                      )),
                  Padding(padding: EdgeInsets.only(top: 20, left: 10)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: width * 0.4,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(5),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text("+890888888888")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3, left: 75),
                      child: Text(
                        "Страна:",
                        style: TextStyle(fontSize:  17),
                      )),
                  Padding(padding: EdgeInsets.only(top: 20, left: 10)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: width * 0.4,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(5),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text("РА СИ Я")),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3, left: 85),
                      child: Text(
                        "Город:",
                        style: TextStyle(fontSize:  17),
                      )),
                  Padding(padding: EdgeInsets.only(top: 20, left: 10)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 40,
                      width: width * 0.4,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.white,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(5),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text("Нижний Новгород")),
                ],
              ),
              SizedBox(
                height: 400,
              ),
              Row(children: [
                Padding(padding: EdgeInsets.only(left: width*0.23)),
                ElevatedButton(
                    onPressed: (){}, child: Text("Сохранить")),],),
            ],
          ),
        ]));
  }
}
