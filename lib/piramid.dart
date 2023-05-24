import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphite/graphite.dart';

class Piramid extends StatefulWidget {
  const Piramid({Key? key}) : super(key: key);

  @override
  State<Piramid> createState() => _PiramidState();
}

class _PiramidState extends State<Piramid> {
  static const list = '['
      '{"id":"A","next":[{"outcome":"B"}]},'
      '{"id":"B","next":[{"outcome":"C"},{"outcome":"D"},{"outcome":"E"}]},'
      '{"id":"C","next":[{"outcome":"F"}]},'
      '{"id":"D","next":[{"outcome":"J"}]},{"id":"E","next":[{"outcome":"J"}]},'
      '{"id":"J","next":[{"outcome":"I"}]},'
      '{"id":"I","next":[{"outcome":"H"}]},{"id":"F","next":[{"outcome":"K"}]},'
      '{"id":"K","next":[{"outcome":"L"}]},'
      '{"id":"H","next":[{"outcome":"L"}]},{"id":"L","next":[{"outcome":"P"}]},'
      '{"id":"P","next":[{"outcome":"M"},{"outcome":"N"}]},'
      '{"id":"M","next":[]},{"id":"N","next":[]}'
      ']';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 4, color: Colors.black)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 10,
                origin: Offset(-10, -22),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                          Border.all(width: 4, color: Colors.black)),
                    ),
                    SizedBox(
                        height: 80,
                        child: Column(
                          children: [
                            Expanded(
                              child: VerticalDivider(
                                width: 4,
                                color: Colors.black,
                                thickness: 4,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                      height: 80,
                      child: Column(
                        children: [
                          Expanded(
                            child: VerticalDivider(
                              width: 4,
                              color: Colors.black,
                              thickness: 4,
                            ),
                          ),
                        ],
                      )),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 4, color: Colors.black)),
                  ),
                ],
              ),
              Transform.rotate(
                angle: -10,
                origin: Offset(10, -22),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                          Border.all(width: 4, color: Colors.black)),
                    ),
                    SizedBox(
                        height: 80,
                        child: Column(
                          children: [
                            Expanded(
                              child: VerticalDivider(
                                width: 4,
                                color: Colors.black,
                                thickness: 4,
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

