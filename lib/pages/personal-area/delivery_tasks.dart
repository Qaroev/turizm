import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryTasks extends StatefulWidget {
  const DeliveryTasks({Key? key}) : super(key: key);

  @override
  State<DeliveryTasks> createState() => _DeliveryTasksState();
}

class _DeliveryTasksState extends State<DeliveryTasks> {
  bool selectButton = false;
  List<TypeButton> listButtonBar = [
    TypeButton("Покупка", "assets/icons/shop.png"),
    TypeButton("Выполнение\nзадания", "assets/icons/book.png")
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Сдача выполненных\nзаданий ",
          style: TextStyle(
              color: Color(0xFF0C6170),
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
        leadingWidth: 100,
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Image.asset("assets/icons/arrow-up.png"),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 10,),
          Text("Выберите тип задания", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
          SizedBox(height: 15,),
          // Column(
          //   children: [
          //     Container(
          //       height: 85,
          //       child: ListView.builder(
          //         physics: BouncingScrollPhysics(),
          //         itemCount: listButtonBar.length,
          //           scrollDirection: Axis.horizontal,
          //           itemBuilder: (ctx, index) {
          //         return GestureDetector(
          //           onTap: (){
          //             setState(() {
          //               current = index;
          //             });
          //           },
          //           child: Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 20),
          //             child: Container(
          //                         height: 84,
          //                         width: 118,
          //                         padding: EdgeInsets.symmetric(horizontal: 10),
          //                         decoration: BoxDecoration(
          //                           color: Color(0xFFDBF5F0),
          //                           borderRadius: BorderRadius.circular(15),
          //                           border: Border.all(color: current==index ? Color(0xFF37BEB0) : Colors.transparent, width: 2)
          //                         ),
          //                         child: Column(
          //                           crossAxisAlignment: CrossAxisAlignment.start,
          //                           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //                           children: [
          //                             Image.asset(listButtonBar[index].icon),
          //                             Text(listButtonBar[index].name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),)
          //                           ],
          //                         ),
          //                       ),
          //           ),
          //         );
          //       }),
          //     ),
          //     Text(current.toString()),
          //     Text("current.toString()")
          //   ],
          // ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) =>
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          current = index;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 84,
                          width: 118,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFFDBF5F0),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: current==index ? Color(0xFF37BEB0) : Colors.transparent, width: 2)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(listButtonBar[index].icon),
                              Text(listButtonBar[index].name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),)
                            ],
                          ),
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          current == 0 ? Text("Сумма покупки",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),)
                       : Text("Выберите задание, которое вы выполнили",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          current == 0 ? SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                hintText: "4 052",
                hintStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
                fillColor: Color(0xFFDBF5F0),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          )
                       : SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Image.asset(
                  "assets/icons/search.png",
                ),
                hintText: "Тут должно быть одно из заданий",
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
          SizedBox(height: 20,),
          Text("Прикрепите скриншот или фото,\nподтверждающее покупку",  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
          SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 45,
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Прикрепить файл",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.51,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 10,),
                  Image.asset("assets/icons/load.png")
                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Text("Напишите комментарий",  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
          SizedBox(height: 10,),
          SizedBox(
            height: 127,
            child: TextField(
              maxLines: 300,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                fillColor: Color(0xFFDBF5F0),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white)),
              ),
            ),
          ),
          SizedBox(height: 25,),
          GestureDetector(
            onTap: (){
              showDialog(
                  barrierColor: Colors.grey.withOpacity(0.5),
                  context: context,
                  builder: (BuildContext context) {
                    return dialog();
                  });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 60,
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
                  "Отправить",
                  style: TextStyle(
                      color: Color(0xFFF0F0F0),
                      fontSize: 21,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Widget dialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      content: Container(
        height: 254,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/icons/chek.png"),
            Text("Запрос успешно\nотправлен :)", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}

class TypeButton {
  TypeButton(this.name, this.icon);
  String name;
  String icon;
}