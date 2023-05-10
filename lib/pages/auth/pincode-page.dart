import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:turizm/pages/auth/touch-page.dart';

class PinCodePage extends StatefulWidget {
  const PinCodePage({Key? key}) : super(key: key);

  @override
  State<PinCodePage> createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash1.png"),
                fit: BoxFit.fill)),
        child: OtpScreen(),
      ),
    );
  }

  ListView buildListView() {
    return ListView(
      padding: EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
      children: [
        Center(
          child: Text(
            "Введите ваш пин-код",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  List<String> currentPin = ["", "", "", "", ""];

  TextEditingController pinOneController = TextEditingController();
  TextEditingController pinTwoController = TextEditingController();
  TextEditingController pinThreeController = TextEditingController();
  TextEditingController pinFourController = TextEditingController();

  int pinIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(height: 80,),
        buildText(),
        Expanded(
            child: Container(
          alignment: Alignment(0, 0.0),
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildPinRow()
            ],
          ),
        )),
        BuildNumberPad(),
      ],
    ));
  }

  Widget buildText() {
    return Text(
      "Введите ваш пин-код",
      style: TextStyle(
          color: Colors.black, fontSize: 26, fontWeight: FontWeight.w600),
    );
  }

  Widget buildPinRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PINNumber(
          textEditingController: pinOneController,
        ),
        PINNumber(
          textEditingController: pinTwoController,
        ),
        PINNumber(
          textEditingController: pinThreeController,
        ),
        PINNumber(
          textEditingController: pinFourController,
        ),
      ],
    );
  }

  Widget BuildNumberPad() {
    return Expanded(
        child: Container(
      child: Padding(
        padding: EdgeInsets.only(bottom: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyBoardNumber(
                    n: 1,
                    onPressed: () {
                      pinIndexSetup("1");
                    }),
                KeyBoardNumber(
                    n: 2,
                    onPressed: () {
                      pinIndexSetup("2");
                    }),
                KeyBoardNumber(
                    n: 3,
                    onPressed: () {
                      pinIndexSetup("3");
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyBoardNumber(
                    n: 4,
                    onPressed: () {
                      pinIndexSetup("4");
                    }),
                KeyBoardNumber(
                    n: 5,
                    onPressed: () {
                      pinIndexSetup("5");
                    }),
                KeyBoardNumber(
                    n: 6,
                    onPressed: () {
                      pinIndexSetup("6");
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                KeyBoardNumber(
                    n: 7,
                    onPressed: () {
                      pinIndexSetup("7");
                    }),
                KeyBoardNumber(
                    n: 8,
                    onPressed: () {
                      pinIndexSetup("8");
                    }),
                KeyBoardNumber(
                    n: 9,
                    onPressed: () {
                      pinIndexSetup("9");
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    width: 60,
                    child: MaterialButton(
                        height: 60,
                        onPressed: () {
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TouchPage()));
                          });
                        },
                        child: Image.asset("assets/images/touchId.png")
                    )
                ),
                KeyBoardNumber(
                    n: 0,
                    onPressed: () {
                      pinIndexSetup("0");
                    }),
                Container(
                    width: 60,
                    child: MaterialButton(
                        height: 60,
                        onPressed: () {
                          clearPin();
                        },
                        child: Image.asset("assets/images/clearPin.png")
                    )
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }

  pinIndexSetup(String text) {
    if (pinIndex == 0) {
      pinIndex = 1;
    } else if (pinIndex < 4) pinIndex++;
      setPin(pinIndex, text);
      currentPin[pinIndex - 1] = text;
      String strPin = "";
      currentPin.forEach((e) {
        strPin += e;
      });
  }

  setPin(int n, String text) {
    switch (n) {
      case 1:
        pinOneController.text = text;
        break;
      case 2:
        pinTwoController.text = text;
        break;
      case 3:
        pinThreeController.text = text;
        break;
      case 4:
        pinFourController.text = text;
        break;
    }
  }

  clearPin() {
    if (pinIndex == 0) {
      pinIndex = 0;
    } else if (pinIndex == 4) {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    } else {
      setPin(pinIndex, "");
      currentPin[pinIndex - 1] = "";
      pinIndex--;
    }
  }
}

class PINNumber extends StatelessWidget {
  final TextEditingController textEditingController;

  const PINNumber(
      {Key? key,
      required this.textEditingController,}
      )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: false,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            filled: true,
            fillColor: Color(0xFFDBF5F0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.transparent)),

        ),
            style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 29, color: Colors.black),
      ),
    );
  }
}

class KeyBoardNumber extends StatelessWidget {
  final int n;
  final Function() onPressed;

  const KeyBoardNumber({Key? key, required this.n, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      alignment: Alignment.center,
      child: MaterialButton(
        padding: EdgeInsets.all(8),
        onPressed: onPressed,
        height: 34,
        child: Text(
          "$n",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: 29 * MediaQuery.of(context).textScaleFactor,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
