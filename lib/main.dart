import 'package:flutter/material.dart';
import 'package:phoneflutter/UI/pages/prof_page.dart';
import 'package:phoneflutter/UI/wigets/vibor_redaktirovaniya_wigets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Профиль'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //width = width * 0.4;
    //print(width);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Профиль",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Row(children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 240,
                  width: width * 1,
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Container(
                          alignment: Alignment.center,
                          height: height * 0.15,
                          width: width * 0.3,
                          // Задаём внутренние отступы

                          // Указываем декорации блока
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // И тут указываем размер скругления границ
                              // В данном случае скругление со всех сторо одинаковое
                              borderRadius: BorderRadius.circular(60),
                              // Указываем информацию о самих границах
                              border: Border.all(
                                width: 1,
                                color: Colors.black,
                              )),
                          child: Text("Фото")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: width * 0.3,
                          // Задаём внутренние отступы
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          // Указываем декорации блока
                          decoration: BoxDecoration(
                              color: Colors.green,
                              // И тут указываем размер скругления границ
                              // В данном случае скругление со всех сторо одинаковое
                              borderRadius: BorderRadius.circular(10),
                              // Указываем информацию о самих границах
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              )),
                          child: Text("Подтвержден")),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0),
                      alignment: Alignment.center,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return profilredwiget();
                          }));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          onPrimary: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        ),
                        icon: Icon(
                          Icons.mode_edit,
                          size: 20,
                        ),
                        label: Text(
                          "Редактировать",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ]),
                ),
                Column(children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    "Информация",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.black,
                    height: 2,
                    width: width * 0.5,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 310,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(10),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text(
                        "ФИО: Кулаев Евгений Олегович",
                        style: TextStyle(fontSize: 17),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 310,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(10),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text(
                        "Дата рождения: 25.12.2002",
                        style: TextStyle(fontSize: 17),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 310,
                      // Задаём внутренние отступы
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      // Указываем декорации блока
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          // И тут указываем размер скругления границ
                          // В данном случае скругление со всех сторо одинаковое
                          borderRadius: BorderRadius.circular(10),
                          // Указываем информацию о самих границах
                          border: Border.all(
                            width: 1,
                            color: Colors.black,
                          )),
                      child: Text(
                        "Почта: Sporty@mail.ru",
                        style: TextStyle(fontSize: 17),
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Достижения",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    color: Colors.black,
                    height: 2,
                    width: width * 0.7,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.network(
                          "https://sun9-5.userapi.com/impg/RaXuv8o50qdLdcJyrtKlaDaw2Bw5VVkwO8shBg/4rHW8Sf3Ll0.jpg?size=283x358&quality=96&sign=e9dfc442a78d057eaccb3e8d18879ba8&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-17.userapi.com/impg/U8tJ06LMtbCZxZsP9IryRY6tZRmV-AjsOvcTpg/t-2vVJTRocQ.jpg?size=300x394&quality=96&sign=8675d0f7a45755428f2cf3bc8aa314fb&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-15.userapi.com/impg/1DboEBdqo1Ubpmq-oPSnn0opJal-ShUpqvlI8w/nHpAA3MIOF0.jpg?size=275x368&quality=96&sign=d3090670ddf298f78a53601d6a330172&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.network(
                          "https://sun9-5.userapi.com/impg/RaXuv8o50qdLdcJyrtKlaDaw2Bw5VVkwO8shBg/4rHW8Sf3Ll0.jpg?size=283x358&quality=96&sign=e9dfc442a78d057eaccb3e8d18879ba8&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-17.userapi.com/impg/U8tJ06LMtbCZxZsP9IryRY6tZRmV-AjsOvcTpg/t-2vVJTRocQ.jpg?size=300x394&quality=96&sign=8675d0f7a45755428f2cf3bc8aa314fb&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-15.userapi.com/impg/1DboEBdqo1Ubpmq-oPSnn0opJal-ShUpqvlI8w/nHpAA3MIOF0.jpg?size=275x368&quality=96&sign=d3090670ddf298f78a53601d6a330172&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.network(
                          "https://sun9-5.userapi.com/impg/RaXuv8o50qdLdcJyrtKlaDaw2Bw5VVkwO8shBg/4rHW8Sf3Ll0.jpg?size=283x358&quality=96&sign=e9dfc442a78d057eaccb3e8d18879ba8&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-17.userapi.com/impg/U8tJ06LMtbCZxZsP9IryRY6tZRmV-AjsOvcTpg/t-2vVJTRocQ.jpg?size=300x394&quality=96&sign=8675d0f7a45755428f2cf3bc8aa314fb&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-15.userapi.com/impg/1DboEBdqo1Ubpmq-oPSnn0opJal-ShUpqvlI8w/nHpAA3MIOF0.jpg?size=275x368&quality=96&sign=d3090670ddf298f78a53601d6a330172&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.network(
                          "https://sun9-5.userapi.com/impg/RaXuv8o50qdLdcJyrtKlaDaw2Bw5VVkwO8shBg/4rHW8Sf3Ll0.jpg?size=283x358&quality=96&sign=e9dfc442a78d057eaccb3e8d18879ba8&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-17.userapi.com/impg/U8tJ06LMtbCZxZsP9IryRY6tZRmV-AjsOvcTpg/t-2vVJTRocQ.jpg?size=300x394&quality=96&sign=8675d0f7a45755428f2cf3bc8aa314fb&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-15.userapi.com/impg/1DboEBdqo1Ubpmq-oPSnn0opJal-ShUpqvlI8w/nHpAA3MIOF0.jpg?size=275x368&quality=96&sign=d3090670ddf298f78a53601d6a330172&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.network(
                          "https://sun9-5.userapi.com/impg/RaXuv8o50qdLdcJyrtKlaDaw2Bw5VVkwO8shBg/4rHW8Sf3Ll0.jpg?size=283x358&quality=96&sign=e9dfc442a78d057eaccb3e8d18879ba8&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-17.userapi.com/impg/U8tJ06LMtbCZxZsP9IryRY6tZRmV-AjsOvcTpg/t-2vVJTRocQ.jpg?size=300x394&quality=96&sign=8675d0f7a45755428f2cf3bc8aa314fb&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Container(
                        child: Image.network(
                          "https://sun9-15.userapi.com/impg/1DboEBdqo1Ubpmq-oPSnn0opJal-ShUpqvlI8w/nHpAA3MIOF0.jpg?size=275x368&quality=96&sign=d3090670ddf298f78a53601d6a330172&type=album",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Профиль'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    //width = width * 0.4;
    //print(width);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Профиль",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: Container(
        child: Row(
          children: [
            Column(children: [

              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Container(
                    alignment: Alignment.center,
                    height: height * 0.15,
                    width: width * 0.3,
                    // Задаём внутренние отступы

                    // Указываем декорации блока
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // И тут указываем размер скругления границ
                        // В данном случае скругление со всех сторо одинаковое
                        borderRadius: BorderRadius.circular(60),
                        // Указываем информацию о самих границах
                        border: Border.all(
                          width: 1,
                          color: Colors.black,
                        )),
                    child: Text("Фото")),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: width * 0.3,
                    // Задаём внутренние отступы
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    // Указываем декорации блока
                    decoration: BoxDecoration(
                        color: Colors.green,
                        // И тут указываем размер скругления границ
                        // В данном случае скругление со всех сторо одинаковое
                        borderRadius: BorderRadius.circular(10),
                        // Указываем информацию о самих границах
                        border: Border.all(
                          width: 1,
                          color: Colors.white,
                        )),
                    child: Text("Подтвержден")),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.center,
                child: RaisedButton.icon(
                    onPressed: () {},
                    color: Colors.grey,
                    icon: Icon(
                      Icons.mode_edit,
                      size: 20,
                    ),
                    label: Text("Редактировать")),
              ),
              SizedBox(
                height: 76,
              ),
              Container(
                color: Colors.black,
                height: 2,
                width: width * 0.5,
              ),
            ]),
            Column(children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                "Информация",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black,
                height: 2,
                width: width * 0.5,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: 35,
                  width: 210,
                  // Задаём внутренние отступы
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 10,
                  ),
                  // Указываем декорации блока
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое
                      borderRadius: BorderRadius.circular(10),
                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text("ФИО: Кулаев Евгений Олегович",style: TextStyle(fontSize: 13),)),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: 35,
                  width: 210,
                  // Задаём внутренние отступы
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  // Указываем декорации блока
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое
                      borderRadius: BorderRadius.circular(10),
                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text("Дата рождения: 25.12.2002",style: TextStyle(fontSize: 13),)),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  height: 35,
                  width: 210,
                  // Задаём внутренние отступы
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  // Указываем декорации блока
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      // И тут указываем размер скругления границ
                      // В данном случае скругление со всех сторо одинаковое
                      borderRadius: BorderRadius.circular(10),
                      // Указываем информацию о самих границах
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: Text("Почта: 000",style: TextStyle(fontSize: 13),)),
              SizedBox(
                height: 100,
              ),
              Text(
                "Достижения",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.black,
                height: 2,
                width: width * 0.5,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}



*/
