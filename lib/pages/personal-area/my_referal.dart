import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyReferal extends StatefulWidget {
  const MyReferal({Key? key}) : super(key: key);

  @override
  State<MyReferal> createState() => _MyReferalState();
}

class _MyReferalState extends State<MyReferal> {

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
          Column(
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
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
                      SizedBox(height: 15,),
                      ExpandableTheme(
                        data: ExpandableThemeData(
                          headerAlignment: ExpandablePanelHeaderAlignment.center,
                          iconColor: Colors.white,
                          iconPadding: EdgeInsets.only(right: 10),
                          iconSize: 30,
                        ),
                        child: ExpandablePanel(
                          header: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Последние покупки",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          collapsed: Container(),
                          expanded: Column(
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
                          builder: (_, collapsed, expanded) {
                            return Expandable(
                              collapsed: collapsed,
                              expanded: expanded,
                              theme: const ExpandableThemeData(
                                  crossFadePoint: 0),
                            );
                          },
                        ),
                      ),
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
