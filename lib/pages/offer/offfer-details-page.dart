
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OfferDetailsPage extends StatefulWidget {
  const OfferDetailsPage({Key? key}) : super(key: key);

  @override
  State<OfferDetailsPage> createState() => _OfferDetailsPageState();
}

class _OfferDetailsPageState extends State<OfferDetailsPage> {
  List<String>  listImagesAll = [
    "assets/images/frame15.png",
    "assets/images/frame16.png",
    "assets/images/frame17.png",
    "assets/images/frame17.png",
    "assets/images/frame17.png",
    "assets/images/frame17.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.circular(12.11)),
                child: Image.asset("assets/icons/arrowUp.png"),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Предложение",
              style: TextStyle(
                  color: Color(0xFF0C6170),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage("assets/images/detailsCountry.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(37),
                    topRight: Radius.circular(37)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Отдых на испанском курорте Коста-Дорада",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10,),
                              RichText(
                                text: TextSpan(
                                    text: "Коста-Дорада\n",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                    children: <TextSpan>[
                                      TextSpan(text: "Испания", style: TextStyle(
                                          color: Color(0xFF979797),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),)
                                    ]
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: List.generate(4, (index) =>
                                Padding(
                                  padding: const EdgeInsets.only(right: 4.0),
                                  child: Image.asset("assets/icons/star.png"),
                                )
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/icons/bicon.png"),
                              SizedBox(width: 10,),
                              Text(
                                "Booking",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "9.6",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19),
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Image.asset("assets/icons/tripadvisor.png"),
                              SizedBox(width: 10,),
                              Text(
                                "Tripadvisor",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "9.6",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 19),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 20,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "5 дней",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Image.asset("assets/icons/eight.png", width: 20, height: 20,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "05.04.23",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Color(0xFFAFAFAF))
                          ),
                          child: Center(
                            child: Text("Позвонить", style: TextStyle(color: Color(0xFF575757), fontSize: 16, fontWeight: FontWeight.w700),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                            child: Text("Отзывы", style: TextStyle(color: Color(0xFFF0F0F0), fontSize: 16, fontWeight: FontWeight.w700),),
                          ),
                        ),
                      ),
                      SizedBox(width: 50,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Описание",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: 20,),
                  Text("Курорт Коста-Дорада (в переводе с испанского \"золотое побережье\")— отрезок побережья Балеарского моря (часть Средиземного моря)в юго-восточной Испании, простирается на 200 км от Вилановы-и-ла-Желтру на севере до расположенного в дельте реки Эбро города Альканар на юге.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(height: 20,),
                  Text("Все фото",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: 20,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(listImagesAll.length, (index) =>
                          Padding(
                            padding: index == listImagesAll.length
                                ? EdgeInsets.only(right: 0)
                                : EdgeInsets.only(right: 15),
                            child: Image.asset(listImagesAll[index]),
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 83,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
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
                      child: Text("Стоимость 400.000 ₽", style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w700),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }

}
