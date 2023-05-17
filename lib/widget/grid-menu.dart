import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../data/country.dart';
import '../pages/offer/offfer-details-page.dart';

class GridMenu extends StatefulWidget {
  String nameCountry;
  List<Country> listCountry;
  ExpandableController controller;
   GridMenu({required this.nameCountry, required this.listCountry, required this.controller , Key? key}) : super(key: key);

  @override
  _GridMenuState createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  ScrollController controllerScroll = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.controller.addListener(() {
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ExpandableTheme(
            data: ExpandableThemeData(
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                iconColor: Colors.white,
                iconPadding: EdgeInsets.only(right: 10),
                iconSize: 30,
                hasIcon: false
            ),
            child: ExpandablePanel(
              controller: widget.controller,
              header: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.nameCountry,
                      style: const TextStyle(color: Colors.black ,fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                    Image.asset(widget.controller.expanded ? "assets/icons/updown.png" : "assets/icons/region.png")
                  ],
                ),
              ),
              collapsed: Container(),
              expanded: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  height: 200,
                  child: GridView.builder(
                    controller: controllerScroll,
                    scrollDirection: Axis.vertical,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.2,
                      crossAxisCount: 3,
                    ),
                    itemCount: widget.listCountry.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const OfferDetailsPage()));
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(widget.listCountry[index].image),
                          const SizedBox(height: 5,),
                          Text(
                            widget.listCountry[index].name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
    );
  }
}