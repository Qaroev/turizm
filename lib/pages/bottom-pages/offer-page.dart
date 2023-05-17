import 'dart:async';

import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turizm/data/country.dart';
import 'package:turizm/data/travel-card.dart';
import 'package:turizm/pages/offer/list_hotels.dart';

import '../../widget/grid-menu.dart';
import '../home.dart';
import '../offer/offfer-details-page.dart';

StreamController<dynamic> refreshStream = StreamController<dynamic>.broadcast();

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key,}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  bool checkedValue = false;
  double currentValueSlide = 0;
  ExpandableController expandableControllerEurope = ExpandableController();
  ExpandableController expandableControllerAsia = ExpandableController();
  ExpandableController expandableControllerSUSA = ExpandableController();
  ExpandableController expandableControllerUUSA = ExpandableController();
  ExpandableController expandableControllerOcean = ExpandableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 40),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        prefixIcon: Image.asset(
                          "assets/icons/search.png",
                        ),
                        hintText: "Поиск...",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFf828282)),
                        fillColor: Color(0xFFDBF5F0),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 54,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Color(0xFFDBF5F0),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    onPressed: () {

                        //Navigator.of(context).pop();
                      //globalKey.currentState!.openDrawer();
                        refreshStream.add(true);

                      // if (_scaffoldKey.currentState!.isDrawerOpen) {
                      //   _scaffoldKey.currentState!.openEndDrawer();
                      //   refreshStream.add(true);
                      // } else {
                      //   _scaffoldKey.currentState!.openEndDrawer();
                      //   refreshStream.add(false);
                      // }
                    },
                    child: Image.asset("assets/icons/filter.png"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Страны",
                  style: TextStyle(
                      color: Color(0xFF121212),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        _showModalCountry(context);
                      });
                    },
                    child: Text(
                      "Все",
                      style: TextStyle(
                          color: Color(0xFF121212),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(countries.length, (index) {
                  return Padding(
                    padding: index == countries.length - 1
                        ? EdgeInsets.only(right: 20)
                        : EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ListHotels()));
                        });
                      },
                      child: Container(
                        width: 103,
                        height: 83,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(countries[index].image),
                            Text(
                              countries[index].name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Color(0xFFF4F4F4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Предложения",
                      style: TextStyle(
                          color: Color(0xFF121212),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                        height: 29,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Text(
                              "Сортировать по",
                              style: TextStyle(
                                  color: Color(0xFF121212),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(width: 5,),
                            Image.asset("assets/icons/sort.png")
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                    children: List.generate(
                  cardsTravel.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> OfferDetailsPage()));
                        });
                      },
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(children: [
                              Container(
                                height: 113,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            cardsTravel[index].image),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                left: 10,
                                bottom: 10,
                                child: Container(
                                  height: 36,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(
                                    cardsTravel[index].imageText,
                                    style: TextStyle(
                                        color: Color(0xFF37B3B0),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              cardsTravel[index].name,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              cardsTravel[index].subName,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                "assets/icons/moon.png"),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${cardsTravel[index].day} ночей",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          cardsTravel[index].description,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "От\t",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 20),
                                                ),
                                                Text(
                                                  "\$${cardsTravel[index].price}",
                                                  style: TextStyle(
                                                      color: Color(0xFF37B3B0),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 36),
                                                ),
                                                Text(
                                                  "\tна\n\tчеловека",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  "Дата вылета",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 12),
                                                ),
                                                Text(
                                                  "${cardsTravel[index].date}",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          )
        ],
      ),

    );
  }

  void _showModalCountry(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
        ),
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            return DraggableScrollableSheet(
                expand: false,
                initialChildSize: 0.6,
                maxChildSize: 1,
                minChildSize: 0.25,
                builder: (BuildContext context, ScrollController scrollController) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 3,
                            width: 80,
                            decoration: BoxDecoration(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Страны",
                              style: TextStyle(
                                  color: Color(0xFF37B3B0),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        GridMenu(nameCountry: "Европа", listCountry: countries, controller: expandableControllerEurope,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Азия", listCountry: countries, controller: expandableControllerAsia,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Серверная Америка", listCountry: countries, controller: expandableControllerSUSA,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Южная Америка", listCountry: countries, controller: expandableControllerUUSA,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Океания", listCountry: countries, controller: expandableControllerOcean,),
                      ],
                    ),
                  );
                });
          });
        });
  }

}
