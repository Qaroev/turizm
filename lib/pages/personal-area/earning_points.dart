import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'delivery_tasks.dart';

class EarningPoints extends StatefulWidget {
  const EarningPoints({Key? key}) : super(key: key);

  @override
  State<EarningPoints> createState() => _EarningPointsState();
}

class _EarningPointsState extends State<EarningPoints> {
  List<String> listNamePoints = [
    "Ваши покупки туристических услуг в турагентстве “Ярко”",
    "Покупки туристических услуг людьми, кто указал ваш реферальный код",
    "Ваши покупки у бизнесов-партнеров нашей компании",
    "Выполнение заданий, которые способствуют продвижению нашей компании"
  ];

  bool _collapseLoadPoints = false;
  bool _collapseActualPoints = false;
  bool _collapseShop = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Заработок баллов",
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
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: _collapseLoadPoints ? 310: 100,
               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFDBF5F0),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () => setState(() {
                            _collapseLoadPoints = !_collapseLoadPoints;
                          }),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Как получить баллы?",
                                style: TextStyle(
                                    color: Color(0xFF37B3B0),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: 300,
                                child: Text(
                                  "Получай баллы, копи их и меняй на деньги!",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(_collapseLoadPoints
                              ? "assets/icons/updown.png"
                              : "assets/icons/region.png"),
                        ],
                      )),
                  Expanded(
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 0),
                        width: MediaQuery.of(context).size.width,
                        height: _collapseLoadPoints ? MediaQuery.of(context).size.width : 0,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: List.generate(
                                listNamePoints.length,
                                (index) => buildListTile(
                                    listNamePoints[index], "${index + 1}")),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(child: Text("Задания", style: TextStyle(color: Color(0xFF37B3B0), fontSize: 22, fontWeight: FontWeight.w600),)),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 38,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Image.asset(
                    "assets/icons/search-icon.png",
                  ),
                  hintText: "Поиск по заданиям...",
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFf828282)),
                  fillColor: Color(0xFFDBF5F0),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Center(child: Text("Актуальные", style: TextStyle(color: Color(0xFF121212), fontSize: 22, fontWeight: FontWeight.w600),)),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () => setState(() {
                            _collapseActualPoints = !_collapseActualPoints;
                          }),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Название №1",
                                    style: TextStyle(
                                        color: Color(0xFF37B3B0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 5,),
                                  !_collapseActualPoints
                                      ? Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: "до ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "27.03.23",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                      SizedBox(width: 20,),
                                      RichText(
                                        text: TextSpan(
                                            text: "150 ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500
                                            ),
                                            children: [
                                              TextSpan(
                                                text: "баллов",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400
                                                ),
                                              )
                                            ]
                                        ),
                                      ),
                                    ],
                                  )
                                      : SizedBox()
                                ],
                              ),
                              Image.asset(_collapseActualPoints
                                  ? "assets/icons/updown.png"
                                  : "assets/icons/region.png"),
                            ],
                          )),
                      AnimatedContainer(
                          duration: Duration(milliseconds: 0),
                          width: MediaQuery.of(context).size.width,
                          height: _collapseActualPoints ? 480 : 0,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: buildListActual(
                                "Lorem ipsum dolor sit amet consectetur. Sit nulla sed consectetur mus augue sagittis. Bibendum augue vel nec luctus pulvinar nec ac sagittis. Cras suspendisse pharetra at mauris vel ipsum varius libero. Ante facilisis arcu volutpat iaculis. Dolor molestie vel magnis euismod venenatis mi in amet. Risus in augue pulvinar tincidunt.",
                                "Lorem ipsum dolor sit amet consectetur. "
                            )
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25,),
          Center(child: Text("Покупки у партнеров", style: TextStyle(color: Color(0xFF0C6170), fontSize: 22, fontWeight: FontWeight.w600),)),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFDBF5F0),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () => setState(() {
                        _collapseShop = !_collapseShop;
                      }),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 240,
                                child: Text(
                                  "Покупка в магазине Puma с чеком от 20 000 сом",
                                  style: TextStyle(
                                      color: Color(0xFF0C6170),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(height: 5,),
                              !_collapseShop
                                  ? Text(
                                    "от 1200 баллов",
                                    style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                                    )
                                  : SizedBox()
                            ],
                          ),
                          Image.asset(_collapseShop
                              ? "assets/icons/updown.png"
                              : "assets/icons/region.png"),
                        ],
                      )),
                  AnimatedContainer(
                      duration: Duration(milliseconds: 0),
                      width: MediaQuery.of(context).size.width,
                      height: _collapseShop ? 200 : 0,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: buildListShop()
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget buildListShop() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Вы получите", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
            Text("Срок", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
            Container()
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFF64DFDF))
              ),
              child: Center(
                child: Text("150 баллов", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),

              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFF64DFDF))
              ),
              child: Center(
                child: Text("до 27.03.23", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
              ),
            ),
            Container()
          ],
        ),
        SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
              child: Text(
                "Подтвердить выполнение",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }
  Widget buildListActual(String description, String conditions) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15,),
        Text("Описание", style: TextStyle(color: Color(0xFF37B3B0), fontSize: 16, fontWeight: FontWeight.w600),),
        SizedBox(height: 10,),
        Text(description, style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
        SizedBox(height: 20,),
        Text("Условия", style: TextStyle(color: Color(0xFF37B3B0), fontSize: 16, fontWeight: FontWeight.w500),),
        SizedBox(height: 10,),
        Row(
          children: [
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Text(
                conditions,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Вы получите", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
            Text("Срок", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
            Container()
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFF64DFDF))
              ),
              child: Center(
                child: Text("150 баллов", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),

              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Color(0xFF64DFDF))
              ),
              child: Center(
                child: Text("до 27.03.23", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),

              ),
            ),
            Container()
          ],
        ),
        SizedBox(height: 20,),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryTasks()));
          },
          child: Container(
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
              child: Text(
                "Подтвердить выполнение",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildListTile(String title, String number) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            height: 17,
            width: 17,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFF37B3B0), width: 0.72)),
            child: Center(
              child: Text(number,
                  style: TextStyle(
                      color: Color(0xFF37B3B0),
                      fontSize: 11.47,
                      fontWeight: FontWeight.w500)),
            ),
          ),
          SizedBox(width: 20,),
          SizedBox(
            width: 220,
              child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 11.47,
                fontWeight: FontWeight.w500),
          ))
        ],
      ),
    );
  }
}
