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
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Сдача выполненных\nзаданий ",
            style: TextStyle(
                color: Color(0xFF0C6170),
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Image.asset("assets/icons/arrow-up.png"),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 10,),
          const Text("Выберите тип задания", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
          const SizedBox(height: 15,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (index) =>
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            current = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 100,
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xFFDBF5F0),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: current==index ? const Color(0xFF37BEB0) : Colors.transparent, width: 2)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(listButtonBar[index].icon),
                                const SizedBox(height: 5,),
                                Text(listButtonBar[index].name, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),
          const SizedBox(height: 30,),
          current == 0 ? const Text("Сумма покупки",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),)
                       : const Text("Выберите задание, которое вы выполнили",  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),),
          const SizedBox(height: 10,),
          current == 0 ? SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: "4 052",
                hintStyle: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: Colors.black
                ),
                fillColor: const Color(0xFFDBF5F0),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
          )
                       : SizedBox(
            height: 45,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                prefixIcon: Image.asset(
                  "assets/icons/search.png",
                ),
                hintText: "Тут должно быть одно из заданий",
                hintStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFf828282)),
                fillColor: const Color(0xFFDBF5F0),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Text("Прикрепите скриншот или фото,\nподтверждающее покупку",  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFDBF5F0).withOpacity(0.44),
                  const Color(0xFF37BEB0),
                  const Color(0xFF1F807D),
                ],
                stops: const [0.0, 0.175, 1.0],
                transform: const GradientRotation(263.42 * 3.1416 / 180),
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Прикрепить файл",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.51,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 10,),
                  Image.asset("assets/icons/load.png")
                ],
              ),
            ),
          ),
          const SizedBox(height: 25,),
          const Text("Напишите комментарий",  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
          const SizedBox(height: 10,),
          SizedBox(
            height: 127,
            child: TextField(
              maxLines: 300,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                fillColor: const Color(0xFFDBF5F0),
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.white),
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.white)),
              ),
            ),
          ),
          const SizedBox(height: 25,),
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  stops: const [0.0, 0.175, 1.0],
                  transform: const GradientRotation(263.42 * 3.1416 / 180),
                ),
              ),
              child: const Center(
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      content: Container(
        height: 254,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/icons/chek.png"),
            const Text("Запрос успешно\nотправлен :)", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),)
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