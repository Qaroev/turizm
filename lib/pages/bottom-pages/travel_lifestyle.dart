import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphite/core/typings.dart';
import 'package:turizm/pages/bottom-pages/offer-page.dart';
import 'package:turizm/pages/bottom-pages/personal_area.dart';

import '../../travel/points_referals.dart';
import '../home.dart';

class TravelLifestyle extends StatefulWidget {
  const TravelLifestyle({Key? key}) : super(key: key);

  @override
  State<TravelLifestyle> createState() => _TravelLifestyleState();
}

class _TravelLifestyleState extends State<TravelLifestyle> {
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
            "Travel Lifestyle",
            style: TextStyle(
                color: Color(0xFF0C6170),
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        ),
        leadingWidth: 100,
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },
          icon: Image.asset("assets/icons/arrow-up.png"),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Членство в клубе активно до:", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
                Text("27.10.2023", style: TextStyle(color: Color(0xFF37B3B0), fontSize: 32, fontWeight: FontWeight.w500),),
                Row(
                  children: [
                    Text("Приобрели членство ", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                    Text("27.10.2022", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Доход от сети", style: TextStyle(color: Color(0xFF121212), fontSize: 20, fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Color(0xFFDBF5F0),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Всего", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                            Text("600 \$", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> PointsReferrals()));
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Color(0xFFDBF5F0),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("За месяц", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
                              Text("150 \$", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Участников сети", style: TextStyle(color: Color(0xFF121212), fontWeight: FontWeight.w600, fontSize: 20),),
                        Row(
                          children: [
                            Expanded(child: Text("30", style: TextStyle(color: Color(0xFF37B3B0), fontWeight: FontWeight.w400, fontSize: 40),)),
                            Expanded(child: Text("До баланса\n6 участников", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Левая сторона", style: TextStyle(color: Color(0xFF121212), fontWeight: FontWeight.w600, fontSize: 14),),
                            Row(
                              children: [
                                Expanded(
                                  flex: 0,
                                    child: Text("15", style: TextStyle(color: Color(0xFF37B3B0), fontWeight: FontWeight.w500, fontSize: 32),)),
                                SizedBox(width: 5,),
                                Expanded(child: Text("До баланса\n3 участников", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12),)),

                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Правая сторона", style: TextStyle(color: Color(0xFF121212), fontWeight: FontWeight.w600, fontSize: 14),),
                            Row(
                              children: [
                                Expanded(
                                  flex: 0,
                                    child: Text("15", style: TextStyle(color: Color(0xFF37B3B0), fontWeight: FontWeight.w500, fontSize: 32),)),
                                SizedBox(width: 5,),
                                Expanded(child: Text("До баланса\n3 участников", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12),)),

                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Статистика месяца", style: TextStyle(color: Color(0xFF121212), fontSize: 20, fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
                Container(
                  height: 75,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 0,
                                child: Text("Всего", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),)),
                            Row(
                              children: [
                                Text("12", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                                SizedBox(width: 5,),
                                Expanded(child: Text("Новых\nучастников", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),)),

                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(color: Colors.white, thickness: 2,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                                child: Text("В левой части", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),)),
                            Row(
                              children: [
                                Text("6", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                                SizedBox(width: 5,),
                                Expanded(child: Text("Новых\nучастников", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),)),

                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(color: Colors.white, thickness: 2,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Text("В правой части", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),)),
                            Row(
                              children: [
                                Text("6", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                                SizedBox(width: 10,),
                                Expanded(child: Text("Новых\nучастников", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 85,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Балансы", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),),
                            Row(
                              children: [
                                Expanded(
                                  flex: 0,
                                    child: Text("6", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),)),
                                SizedBox(width: 5,),
                                Expanded(child: Text("Новых\nбалансов", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),)),

                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(color: Colors.white, thickness: 2,),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Expanded(child: Text("К выплате", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),)),
                                Expanded(child: Text("05.04.2023", style: TextStyle(color: Color(0xFF37BEB0), fontWeight: FontWeight.w600, fontSize: 12),)),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(child: Text("200\$", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xFF37B3B0))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Моя сеть", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
                SizedBox(height: 10,),
                Center(child: Image.asset("assets/images/piramid.png"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
