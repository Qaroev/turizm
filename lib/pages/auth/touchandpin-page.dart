import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turizm/pages/auth/pincode-page.dart';
import 'package:turizm/pages/auth/touch-page.dart';

class TouchAndPinPage extends StatefulWidget {
  const TouchAndPinPage({Key? key}) : super(key: key);

  @override
  State<TouchAndPinPage> createState() => _TouchAndPinPageState();
}

class _TouchAndPinPageState extends State<TouchAndPinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash1.png"),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Добро пожаловать,",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 10,),
            Text(
                "Воспользуйтесь Touch ID\nили введите пин-код",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 40,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> TouchPage()));
                });
              },
                child: Image.asset("assets/images/touch.png")),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> PinCodePage()));
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 1.6,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
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
                alignment: Alignment.center,
                child: const Text(
                  'Использовать пин-код',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
