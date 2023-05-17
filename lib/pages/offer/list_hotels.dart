import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ListHotels extends StatefulWidget {
  const ListHotels({Key? key}) : super(key: key);

  @override
  State<ListHotels> createState() => _ListHotelsState();
}

class _ListHotelsState extends State<ListHotels> {
  TextEditingController textEditingControllerSearchHotels = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Container(
                height: 45,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.circular(12.11)),
                child: Image.asset("assets/icons/arrowUp.png"),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              "Список отелей",
              style: TextStyle(
                  color: Color(0xFF0C6170),
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: TextField(
                    controller: textEditingControllerSearchHotels,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      prefixIcon: Image.asset(
                        "assets/icons/search.png",
                      ),
                      hintText: "Поиск...",
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFf828282)),
                      fillColor: Color(0xFFDBF5F0),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 54,
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {

                  },
                  child: Image.asset("assets/icons/filter.png"),
                ),
              )
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Text(
                "Сортировать по",
                style: TextStyle(
                    color: Color(0xFF121212),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 10,),
              Image.asset("assets/icons/sort.png")
            ],
          ),
          SizedBox(height: 20,),
          Column(
              children: List.generate(
                5,
                    (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFF37B3B0), width: 2,)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(children: [
                            Container(
                              height: 203,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/hotel.png"),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              left: 10,
                              bottom: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: List.generate(5, (index) =>
                                        Padding(
                                          padding: const EdgeInsets.only(right: 5.0),
                                          child: Image.asset("assets/icons/star.png"),
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    width: 300,
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15)),
                                    child: Text(
                                      "Radisson BluRoyal Viking Hotel",
                                      style: TextStyle(
                                          color: Color(0xFF37B3B0),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Text(
                                "5 дней",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "От\t",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "\$135",
                                          style: TextStyle(
                                              color: Color(0xFF37B3B0),
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: 36),
                                        ),
                                        Text(
                                          "\tна\n\tчеловека",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight:
                                              FontWeight.w400,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset("assets/icons/bicon.png"),
                                            SizedBox(width: 10,),
                                            Text(
                                              "Booking",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(width: 10,),
                                            Text(
                                              "9.6",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 19),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            Image.asset("assets/icons/tripadvisor.png"),
                                            SizedBox(width: 10,),
                                            Text(
                                              "Tripadvisor",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(width: 10,),
                                            Text(
                                              "4.5",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 19),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "Вы получите от 23 баллов",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context, rootNavigator: true).pop();
                                          showDialog(
                                              barrierColor: Colors.grey.withOpacity(0.5),
                                              context: context,
                                              builder: (BuildContext context) {
                                                return dialog();
                                              });
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(15),
                                              border: Border.all(color: Color(0xFFAFAFAF))
                                          ),
                                          child: Center(
                                            child: Text("Задать вопрос", style: TextStyle(color: Color(0xFF575757), fontSize: 16, fontWeight: FontWeight.w700),),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
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
                                          child: Text("Об отеле", style: TextStyle(color: Color(0xFFF0F0F0), fontSize: 16, fontWeight: FontWeight.w700),),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
  Widget dialog() {
    return AlertDialog(
      titlePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      title:  Text("Написать в ", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        actions:[
          Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF48BD10),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Image.asset("assets/icons/watsapp.png"),
                    SizedBox(width: 10,),
                    Text("Watsapp", style: TextStyle(color: Color(0xFFF0F0F0), fontSize: 16, fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
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
                child: Center(child: Text("Отзывы", style: TextStyle(color: Color(0xFFF0F0F0), fontSize: 16, fontWeight: FontWeight.w700),)),
              ),
            ),
          ],
        ),
    ]
    );
  }
}
