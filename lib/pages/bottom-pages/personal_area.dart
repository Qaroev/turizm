

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:video_player/video_player.dart';

import '../personal-area/points_cashing.dart';
import '../personal-area/profile_page.dart';

class PersonalArea extends StatefulWidget {
  const PersonalArea({Key? key}) : super(key: key);

  @override
  State<PersonalArea> createState() => _PersonalAreaState();
}

class _PersonalAreaState extends State<PersonalArea> {
  VideoPlayerController videoPlayerController = VideoPlayerController.asset('assets/video.mp4');
  final FlickManager flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset('assets/video.mp4'));

  bool _collapse = false;

  final List<GDPData> chartData = [
    GDPData("Покупки ваших друзей ", 17, Color(0xFFDBF5F0)),
    GDPData("Выполнение задания", 17, Color(0xFF2ADDD9)),
    GDPData("Покупка в “Ярко”", 47, Color(0xFF1CB2AF)),
    GDPData("Покупка у партнеров", 21, Color(0xFF2A827F)),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F4F4),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Личный кабинет",
          style: TextStyle(
              color: Color(0xFF0C6170),
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Container(
            height: 227,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/user.png"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " Александр\n Зимин",
                      style: TextStyle(
                          color: Color(0xFF37B3B0),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Телефон",
                          style: TextStyle(
                              color: Color(0xFF535353),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "+372 550 735 62",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 35,
                        width: 135,
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
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Профиль",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "223 620",
                  style: TextStyle(
                      color: Color(0xFF37B3B0),
                      fontWeight: FontWeight.w500,
                      fontSize: 48),
                ),
                Text(
                  "накоплено\nбаллов",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 45,
                width: 167,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Как получить баллы?",
                    style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> PointsCashing()));
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 45,
                  width: 170,
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
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Обналичить баллы",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Text(
                  "Источники поступления баллов",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SfCircularChart(
                  series: <CircularSeries>[
                    DoughnutSeries<GDPData, String>(
                        dataSource: chartData,
                        xValueMapper: (GDPData data, _) => data.content,
                        yValueMapper: (GDPData data, _) => data.gdp,
                        pointColorMapper: (GDPData data, _) => data.color,
                        dataLabelMapper: (GDPData data, _) => data.content,
                        dataLabelSettings: DataLabelSettings(
                            builder: (dynamic data,
                                dynamic point,
                                dynamic series,
                                int pointIndex,
                                int seriesIndex) {
                              return SizedBox(
                                  height: 50,
                                  width: 80,
                                  child: RichText(
                                    text: TextSpan(
                                        text: "${data.content}\n",
                                        style: TextStyle(
                                            color:
                                                data.color == Color(0xFFDBF5F0)
                                                    ? Color(0xFF1CB2AF)
                                                    : data.color,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: "${data.gdp.toString()}%",
                                            style: TextStyle(
                                                color: data.color ==
                                                        Color(0xFFDBF5F0)
                                                    ? Color(0xFF1CB2AF)
                                                    : data.color,
                                                fontSize: 8,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ]),
                                  ));
                            },
                            isVisible: true,
                            textStyle: TextStyle(
                                color: Color(0xFF2A827F),
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                            labelIntersectAction: LabelIntersectAction.none,
                            labelPosition: ChartDataLabelPosition.outside,
                            connectorLineSettings: ConnectorLineSettings(
                              width: 2,
                              type: ConnectorType.line,
                            )),
                        startAngle: 25,
                        endAngle: 385,
                        innerRadius: '60%',
                        radius: '50%'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Text("Движение баллов",
                    style: TextStyle(
                        color: Color(0xFF37B3B0),
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 10,
                ),
                Text("12.02.2023",
                    style: TextStyle(
                        color: Color(0xFF353535),
                        fontSize: 11,
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: buildScore(),
                          )),
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        _collapse = !_collapse;
                      }),
                      child: !_collapse
                          ? Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 10, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Смотреть все",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Image.asset(_collapse
                                      ? "assets/icons/updown.png"
                                      : "assets/icons/region.png"),
                                ],
                              ),
                            )
                          : SizedBox(),
                    ),
                    AnimatedContainer(
                        duration: Duration(milliseconds: 0),
                        width: MediaQuery.of(context).size.width,
                        height:
                            _collapse ? MediaQuery.of(context).size.width : 0,
                        child: Column(
                          children: List.generate(
                              5,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: buildScore(),
                                  )),
                        )),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Заработок баллов",
                    style: TextStyle(
                        color: Color(0xFF37B3B0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Image.asset("assets/icons/arrow-down.png")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Мои рефералы",
                    style: TextStyle(
                        color: Color(0xFF37B3B0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Image.asset("assets/icons/arrow-down.png")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 125,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                          "Получай пассивный доход вместе с клубом путешественников",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: " “Travel Lifestyle”",
                          style: TextStyle(
                              color: Color(0xFF0C6170),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )
                      ]),
                ),
                GestureDetector(
                  onTap: (){
                   setState(() {
                     _showTravelSheet(context);
                   });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 38),
                    height: 43,
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
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Узнать больше",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 53,
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
              ),
            ),
            child: Center(
              child: Text(
                "Онлайн-чат с поддержкой",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildScore() {
    return Container(
      height: 53,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(color: Color(0xFF64DFDF))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Покупка в “Ярко”",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "Детали покупки",
                style: TextStyle(
                    color: Color(0xFF353535),
                    fontSize: 10,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Text(
            "+345",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }

  void _showTravelSheet(context) {
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
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            Center(
                              child: Text(
                                "Travel Lifestyle",
                                style: TextStyle(
                                    color: Color(0xFF0C6170),
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(height: 30,),
                            Container(
                              height: 199,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: AspectRatio(
                                  aspectRatio: videoPlayerController.value.aspectRatio,
                                  child: FlickVideoPlayer(
                                    flickVideoWithControls: FlickVideoWithControls(
                                      videoFit: BoxFit.fill,
                                      controls: FlickPortraitControls(
                                        progressBarSettings:
                                        FlickProgressBarSettings(playedColor: Colors.green),
                                      ),
                                    ),

                                    flickManager: flickManager,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: Text(
                                "Покупка членства в клубе",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 114,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F4F4),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Купить членство за 1500 баллов",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 38),
                                    height: 50,
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
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Оплатить",
                                        style: TextStyle(
                                            color: Color(0xFFF0F0F0),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    });
              });
        });
  }
}

class GDPData {
  GDPData(this.content, this.gdp, this.color);

  final String content;
  final int gdp;
  final Color color;
}
