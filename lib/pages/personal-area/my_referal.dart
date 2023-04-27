import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyReferal extends StatefulWidget {
  const MyReferal({Key? key}) : super(key: key);

  @override
  State<MyReferal> createState() => _MyReferalState();
}

class _MyReferalState extends State<MyReferal> {
  bool _collapse = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Мои рефералы",
          style: TextStyle(
              color: Color(0xFF0C6170),
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
        leadingWidth: 100,
        titleSpacing: 0,
        leading: IconButton(
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
          Column(
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
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
                    children: [
                      Container(
                        height: 145,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/person1.png"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Александр\nИ.О",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Зарегестрирован с",
                                      style: TextStyle(
                                          color: Color(0xFF989898),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "23.02.2022",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Телефон",
                                      style: TextStyle(
                                          color: Color(0xFF989898),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "+372 550 735 62",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Column()
                              ],
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _collapse = !_collapse;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  top: 20.0, left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Последние покупки",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Image.asset(
                                    _collapse
                                        ? "assets/icons/up-white.png"
                                        : "assets/icons/down-white.png",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: _collapse ? 280 : 0,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Text(
                                      "12.02.2023",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Column(
                                    children: List.generate(
                                        3,
                                        (index) => Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                              child: buildScore(),
                                            )),
                                  )
                                ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildScore() {
    return Container(
      height: 53,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Покупка в “Ярко”",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Детали покупки",
                style: TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 10,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Text(
            "+345",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }


}
