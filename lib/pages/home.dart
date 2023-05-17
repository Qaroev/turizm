import 'package:flutter/material.dart';
import 'package:turizm/pages/bottom-pages/offer-page.dart';

import 'bottom-pages/travel_lifestyle.dart';
import 'bottom-pages/personal_area.dart';

final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  TextEditingController textEditingControllerMin = TextEditingController();
  TextEditingController textEditingControllerMax = TextEditingController();
  int selectPage = 0;
  bool checkedValue = false;
  bool checkedValue1 = false;
  bool checkedValue2 = false;
  bool checkedValue3 = false;
  bool checkedValue4 = false;
  double currentValueSlide = 0;
  double currentValueSlideBooking = 0;
  bool isHide = false;
  List<String> listIconsButtonBar = [
    "assets/icons/file-text.png",
    "assets/icons/profile.png",
    "assets/icons/network.png",
  ];

  List pages = [
     OfferPage(),
     PersonalArea(),
     TravelLifestyle(),
  ];

  @override
  void initState() {
    refreshStream.stream.listen((event) {
      if (event) {
          isHide = event;
        globalKey.currentState!.openEndDrawer();
      }
    });

    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: pages[selectPage],
      bottomNavigationBar: _bottomNavigationBar(),
      endDrawer: buildDrawer()
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              blurRadius: 18,
              spreadRadius: 0,
              color: const Color(0xFF0C1E4C).withOpacity(0.1),
              offset: const Offset(0, -1))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(listIconsButtonBar.length, (index) {
          return InkWell(
            onTap: () {
              setState(() {
                selectPage = index;
              });
            },
            child: Row(
              children: [
                Image.asset(
                  listIconsButtonBar[index],
                  color: selectPage == index
                      ? const Color(0xFF37B3B0)
                      : index == 2
                          ? Colors.black12
                          : Colors.black,
                ),
              ],
            ),
          );
        }),
      ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: _buildSlideTripadvisorDrawer(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Color(0xFFD1D5FF),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: _buildSlideBookingDrawer(),
                  ),
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
                        controller: textEditingControllerMin,
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
                        controller: textEditingControllerMax,
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
                value: checkedValue4,
                tristate: false,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checkedValue4 = isChecked!;
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
                value: checkedValue2,
                tristate: false,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checkedValue2 = isChecked!;
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
                value: checkedValue3,
                tristate: false,
                onChanged: (bool? isChecked) {
                  setState(() {
                    checkedValue3 = isChecked!;
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
                thumbColor: Color(0xFF1F807D),
                activeTrackColor: Color(0xFF1F807D),
                inactiveTrackColor: Color(0xFFF0F0F0),
                trackHeight: 16.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 9.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 9.0),
              ),
              child: Slider(
                value: currentValueSlide,
                min: 0.0,
                max: 10.0,
                onChanged: (value) {
                  setState(() {
                    currentValueSlide = value;
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
                thumbColor: Color(0xFF1F807D),
                activeTrackColor: Color(0xFF1F807D),
                inactiveTrackColor: Color(0xFFF0F0F0),
                trackHeight: 16.0,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 9.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 9.0),
              ),
              child: Slider(
                value: currentValueSlideBooking,
                min: 0.0,
                max: 5.0,
                onChanged: (value) {
                  setState(() {
                    currentValueSlideBooking = value;
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
                )),
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
                  "Очистить",
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
}
