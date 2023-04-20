import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfferDetailsPage extends StatefulWidget {
  const OfferDetailsPage({Key? key}) : super(key: key);

  @override
  State<OfferDetailsPage> createState() => _OfferDetailsPageState();
}

class _OfferDetailsPageState extends State<OfferDetailsPage> {
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
            Container(
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFDBF5F0),
                borderRadius: BorderRadius.circular(12.11)
              ),
              child: Image.asset("assets/icons/arrowUp.png"),
            ),
            SizedBox(width: 30,),
            Text("Предложение", style: TextStyle(color: Color(0xFF0C6170), fontSize: 24, fontWeight: FontWeight.w500),),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("assets/images/detailsCountry.png"),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            Positioned(
              top: 330,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(37), topRight: Radius.circular(37)
                  ),
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
