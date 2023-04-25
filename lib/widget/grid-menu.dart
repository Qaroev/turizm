import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/country.dart';
import '../pages/offer/offfer-details-page.dart';

class GridMenu extends StatefulWidget {
  String nameCountry;
  List<Country> listCountry;
   GridMenu({required this.nameCountry, required this.listCountry, Key? key}) : super(key: key);

  @override
  _GridMenuState createState() => _GridMenuState();
}

class _GridMenuState extends State<GridMenu> {
  bool _collapse = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => setState(() {
            _collapse = !_collapse;
          }),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                      widget.nameCountry,
                      style: TextStyle(color: Colors.black ,fontSize: 22, fontWeight: FontWeight.w400),
                    )),
                Image.asset(_collapse
                    ? "assets/icons/updown.png"
                    : "assets/icons/region.png"
                ),
              ],
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 0),
          width: MediaQuery.of(context).size.width,
          height: _collapse ? MediaQuery.of(context).size.width : 0,
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.2,
              crossAxisCount: 3,
            ),
            itemCount: widget.listCountry.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> OfferDetailsPage()));
                });
              },
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(widget.listCountry[index].image),
                    SizedBox(height: 5,),
                    Text(
                      widget.listCountry[index].name,
                      style: TextStyle(
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
      ],
    );
  }
}