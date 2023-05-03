import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointsCashing extends StatefulWidget {
  const PointsCashing({Key? key}) : super(key: key);

  @override
  State<PointsCashing> createState() => _PointsCashingState();
}

class _PointsCashingState extends State<PointsCashing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Обналичивание баллов",
              style: TextStyle(
                  color: Color(0xFF0C6170),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ),
          titleSpacing: 0,
          leading: IconButton(
            padding: EdgeInsets.only(left: 20),
            onPressed: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            icon: Image.asset("assets/icons/arrow-up.png"),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            RichText(
                text: TextSpan(
                    text: "Укажите сумму\n",
                    style: TextStyle(
                        color: Color(0xFF37B3B0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text: "для обналичивания",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ])),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  height: 45,
                  width: 136,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      fillColor: Color(0xFFDBF5F0),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Баллов",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    Text(
                      "100 баллов = 1 USD",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Минимальная сумма обналичивания\n10.000 баллов",
              style: TextStyle(
                  color: Color(0xFF353535),
                  fontWeight: FontWeight.w400,
                  fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
                    text: "Выберите ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    children: [
                  TextSpan(
                    text: "способ получения",
                    style: TextStyle(
                        color: Color(0xFF37B3B0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  )
                ])),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      stops: [0.0, 0.5516, 1.044],
                      colors: [
                        Color(0xFFDBF5F0),
                        Color(0xFF37BEB0),
                        Color(0xFF37B3B0),
                      ],
                      transform: GradientRotation(263.42 * 3.14 / 180),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/icons/money.png"),
                      Text("Наличными\nв офиссе", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
                SizedBox(width: 30,),
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      stops: [0.0, 0.5516, 1.044],
                      colors: [
                        Color(0xFFDBF5F0),
                        Color(0xFF37BEB0),
                        Color(0xFF37B3B0),
                      ],
                      transform: GradientRotation(263.42 * 3.14 / 180),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/icons/card.png"),
                      Text("Переводом\nна счёт", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),)
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            RichText(
                text: TextSpan(
                    text: "Укажите ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: "ваши реквизиты",
                        style: TextStyle(
                            color: Color(0xFF37B3B0),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ])),
            SizedBox(height: 20,),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    " Номер счёта",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFDBF5F0),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xFFDBF5F0),
                              style: BorderStyle.solid),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Color(0xFFDBF5F0))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    " Имя Фамилия владельца счёта",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 44,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Color(0xFFDBF5F0),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: Color(0xFFDBF5F0),
                              style: BorderStyle.solid),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Color(0xFFDBF5F0))
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFDBF5F0).withOpacity(0.44),
                          Color(0xFF37BEB0),
                          Color(0xFF1F807D),
                        ],
                        stops: [0.0, 0.175, 1.0],
                        transform: GradientRotation(263.42 * 3.1416 / 180),
                      ),
                    ),
                    child: Center(
                      child: Text("Отправить запрос ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),),
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Обработка запроса может занять до 5 рабочих дней",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
          ],
        ));
  }
}
