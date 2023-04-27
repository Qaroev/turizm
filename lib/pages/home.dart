import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turizm/pages/bottom-pages/offer-page.dart';

import 'bottom-pages/travel_lifestyle.dart';
import 'bottom-pages/personal_area.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectPage = 0;
  bool isHideBottomNavigationBar = false;
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
    // refreshStream.stream.listen((event) {
    //   print(event);
    //   isHideBottomNavigationBar = event;
    // });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: pages[selectPage],
      bottomNavigationBar: _bottomNavigationBar(),
    );
    ;
  }

  Widget _bottomNavigationBar() {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              blurRadius: 18,
              spreadRadius: 0,
              color: Color(0xFF0C1E4C).withOpacity(0.1),
              offset: Offset(0, -1))
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
                      ? Color(0xFF37B3B0)
                      : index == 2
                          ? Colors.black12
                          : Colors.black,
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
