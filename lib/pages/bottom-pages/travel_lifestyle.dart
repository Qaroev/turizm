import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphite/core/typings.dart';
import 'package:turizm/pages/bottom-pages/personal_area.dart';

import '../../travel/points_referals.dart';

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
        title: Text(
          "Travel Lifestyle",
          style: TextStyle(
              color: Color(0xFF0C6170),
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
        leadingWidth: 100,
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Image.asset("assets/icons/arrow-up.png"),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Container(
            height: 127,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            height: 143,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Доход от сети", style: TextStyle(color: Color(0xFF121212), fontSize: 20, fontWeight: FontWeight.w600),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 73,
                      width: 160,
                      padding: EdgeInsets.symmetric(horizontal: 20),
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
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PointsReferrals()));
                        });
                      },
                      child: Container(
                        height: 73,
                        width: 160,
                        padding: EdgeInsets.symmetric(horizontal: 20),
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
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 147,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Участников\nсети", style: TextStyle(color: Color(0xFF121212), fontWeight: FontWeight.w600, fontSize: 20),),
                    Row(
                      children: [
                        Text("30", style: TextStyle(color: Color(0xFF37B3B0), fontWeight: FontWeight.w400, fontSize: 40),),
                        SizedBox(width: 10,),
                        Text("До баланса\n6 участников", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),),

                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 71,
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                            Text("15", style: TextStyle(color: Color(0xFF37B3B0), fontWeight: FontWeight.w500, fontSize: 32),),
                            SizedBox(width: 10,),
                            Text("До баланса\n3 участников", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12),),

                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 71,
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                            Text("15", style: TextStyle(color: Color(0xFF37B3B0), fontWeight: FontWeight.w500, fontSize: 32),),
                            SizedBox(width: 10,),
                            Text("До баланса\n3 участников", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 12),),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 15,),
          Container(
            height: 207,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Статистика месяца", style: TextStyle(color: Color(0xFF121212), fontSize: 20, fontWeight: FontWeight.w600),),
                Container(
                  height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Всего", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),),
                          Row(
                            children: [
                              Text("12", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                              SizedBox(width: 10,),
                              Text("Новых\nучастников", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),),

                            ],
                          )
                        ],
                      ),
                      VerticalDivider(color: Colors.white, thickness: 2,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("В левой части", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),),
                          Row(
                            children: [
                              Text("6", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                              SizedBox(width: 10,),
                              Text("Новых\nучастников", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),),

                            ],
                          )
                        ],
                      ),
                      VerticalDivider(color: Colors.white, thickness: 2,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("В правой части", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),),
                          Row(
                            children: [
                              Text("6", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                              SizedBox(width: 10,),
                              Text("Новых\nучастников", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),),

                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Балансы", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),),
                          Row(
                            children: [
                              Text("6", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                              SizedBox(width: 10,),
                              Text("Новых\nбалансов", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 9),),

                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 20,),
                      VerticalDivider(color: Colors.white, thickness: 2,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Text("К выплате", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w600, fontSize: 12),),
                              SizedBox(width: 5,),
                              Text("05.04.2023", style: TextStyle(color: Color(0xFF37BEB0), fontWeight: FontWeight.w600, fontSize: 12),),
                            ],
                          ),
                          Row(
                            children: [
                              Text("200\$", style: TextStyle(color: Color(0xFF353535), fontWeight: FontWeight.w500, fontSize: 30),),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            height: 450,
            padding: EdgeInsets.symmetric(horizontal: 20),
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
                Center(child: Image.asset("assets/images/piramid.png"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
