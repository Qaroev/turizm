import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turizm/data/country.dart';
import 'package:turizm/data/travel-card.dart';
import 'package:turizm/pages/offer/list_hotels.dart';

import '../../widget/grid-menu.dart';
import '../offer/offfer-details-page.dart';

StreamController<dynamic> refreshStream = StreamController<dynamic>.broadcast();

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  State<OfferPage> createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  bool checkedValue = false;
  double _currentValueSlide = 0;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
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
                      if (_scaffoldKey.currentState!.isDrawerOpen) {
                        _scaffoldKey.currentState!.openEndDrawer();
                        refreshStream.add(false);
                      } else {
                        _scaffoldKey.currentState!.openEndDrawer();
                        refreshStream.add(true);
                      }
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
                    padding: index == 4
                        ? EdgeInsets.only(right: 0)
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
      endDrawer: buildDrawer(),
    );
  }

  Widget buildDrawer() {
    return SafeArea(
      bottom: false,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), bottomLeft: Radius.circular(25)),
        child: Container(
          width: 264,
          child: Drawer(
            elevation: 0,
            backgroundColor: Colors.white,
            child: ListView(
                padding: EdgeInsets.symmetric(vertical: 20),
                children: [
                  ListTile(
                    title: Text("Фильтр",
                        style: TextStyle(
                            color: Color(0xFF0C6170),
                            fontSize: 24,
                            fontWeight: FontWeight.w700)),
                  ),
                  _buildBudgetDrawer(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xFFD1D5FF),
                  ),
                  _buildRegionListTileDrawer(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xFFD1D5FF),
                  ),
                  _buildStarsListDrawer(),
                  Divider(
                    color: Color(0xFFD1D5FF),
                  ),
                  _buildSlideTripadvisorDrawer(),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xFFD1D5FF),
                  ),
                  _buildSlideBookingDrawer(),
                  SizedBox(
                    height: 200,
                  ),
                  Divider(
                    color: Color(0xFFD1D5FF),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _bottomButtonDrawer(),
                ]),
          ),
        ),
      ),
    );
  }

  Column _buildBudgetDrawer() {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Ваш бюджет",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            "(за весь турпакет)",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " От",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 37,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "мин. цена",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF989898)),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color(0xFFDBF5F0),
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xFFDBF5F0))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "\$",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                " До",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 37,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintText: "макс. цена",
                          hintStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF989898)),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Color(0xFFDBF5F0),
                                style: BorderStyle.solid),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Color(0xFFDBF5F0))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "\$",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _buildRegionListTileDrawer() {
    return Column(
      children: [
        ListTile(
          title: Text("Регион",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          title: Text("Название региона",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: IconButton(
            onPressed: null,
            icon: Image.asset("assets/icons/region.png"),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          title: Text("Название региона",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: IconButton(
            onPressed: null,
            icon: Image.asset("assets/icons/region.png"),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          title: Text("Название региона",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: IconButton(
            onPressed: null,
            icon: Image.asset("assets/icons/region.png"),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          title: Text("Название региона",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: IconButton(
            onPressed: null,
            icon: Image.asset("assets/icons/region.png"),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          title: Text("Название региона",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: IconButton(
            onPressed: null,
            icon: Image.asset("assets/icons/region.png"),
          ),
        ),
      ],
    );
  }

  Column _buildStarsListDrawer() {
    return Column(
      children: [
        ListTile(
          title: Text("Количество звёзд",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          minLeadingWidth: 10,
          title: Text("5 звёзд",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: Text("245",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
            width: 22,
            height: 22,
            child: Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.transparent,
              ),
              child: Checkbox(
                activeColor: Colors.transparent,
                checkColor: Colors.black,
                value: checkedValue,
                tristate: false,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checkedValue = isChecked!;
                  });
                },
              ),
            ),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          minLeadingWidth: 10,
          title: Text("4 звёзд",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: Text("75",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
            width: 22,
            height: 22,
            child: Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.transparent,
              ),
              child: Checkbox(
                activeColor: Colors.transparent,
                checkColor: Colors.black,
                value: checkedValue,
                tristate: false,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checkedValue = isChecked!;
                  });
                },
              ),
            ),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          minLeadingWidth: 10,
          title: Text("3 звёзд",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: Text("75",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
            width: 22,
            height: 22,
            child: Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.transparent,
              ),
              child: Checkbox(
                activeColor: Colors.transparent,
                checkColor: Colors.black,
                value: checkedValue,
                tristate: false,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checkedValue = isChecked!;
                  });
                },
              ),
            ),
          ),
        ),
        ListTile(
          dense: true,
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          minLeadingWidth: 10,
          title: Text("Без звёзд",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400)),
          trailing: Text("75",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400)),
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
            width: 22,
            height: 22,
            child: Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.transparent,
              ),
              child: Checkbox(
                activeColor: Colors.transparent,
                checkColor: Colors.black,
                value: checkedValue,
                tristate: false,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checkedValue = isChecked!;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildSlideTripadvisorDrawer() {
    return Column(
      children: [
        ListTile(
          title: Text("Рейтинг на Tripadvisor",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
        ),
        Column(
          children: [
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Color(0xFF64DFDF),
                activeTrackColor: Color(0xFF64DFDF),
                inactiveTrackColor: Color(0xFFF0F0F0),
                trackHeight: 16.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 9.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 9.0),
              ),
              child: Slider(
                value: _currentValueSlide,
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  setState(() {
                    _currentValueSlide = value;
                  });
                },
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                5,
                (index) => Text(
                      "${index + 1}",
                      style: TextStyle(
                          color: Color(0xFF353535),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    )),
          ),
        )
      ],
    );
  }

  Column _buildSlideBookingDrawer() {
    return Column(
      children: [
        ListTile(
          title: Text("Рейтинг на Booking",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600)),
        ),
        Column(
          children: [
            SliderTheme(
              data: SliderThemeData(
                thumbColor: Color(0xFF64DFDF),
                activeTrackColor: Color(0xFF64DFDF),
                inactiveTrackColor: Color(0xFFF0F0F0),
                trackHeight: 16.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 9.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 9.0),
              ),
              child: Slider(
                value: _currentValueSlide,
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  setState(() {
                    _currentValueSlide = value;
                  });
                },
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                10,
                (index) => Text(
                      "${index + 1}",
                      style: TextStyle(
                          color: Color(0xFF353535),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    )),
          ),
        )
      ],
    );
  }

  Widget _bottomButtonDrawer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Container(
            height: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFF64DFDF),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Text(
              "Применить",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black)),
            child: Center(
                child: Text(
              "Применить",
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            )),
          ),
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
                        GridMenu(nameCountry: "Европа", listCountry: countries,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Азия", listCountry: countries,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Серверная Америка", listCountry: countries,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Южная Америка", listCountry: countries,),
                        Divider(
                          height: 1,
                          color: Color(0xFF989898),
                        ),
                        GridMenu(nameCountry: "Океания", listCountry: countries,),
                      ],
                    ),
                  );
                });
          });
        });
  }

}
