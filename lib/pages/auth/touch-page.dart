import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TouchPage extends StatefulWidget {
  const TouchPage({Key? key}) : super(key: key);

  @override
  State<TouchPage> createState() => _TouchPageState();
}

class _TouchPageState extends State<TouchPage> {

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
            SizedBox(height: 100,),
            Text(
              "Touch ID для “Название”",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Авторизация с помощью\nотпечатка пальца",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(height: 100,),
            GestureDetector(
              onTap: (){
                setState(() {

                });
              },
                child: Image.asset("assets/images/touch.png")
            ),
            Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}
