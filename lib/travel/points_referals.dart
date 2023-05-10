import 'package:flutter/material.dart';

class PointsReferrals extends StatefulWidget {
  const PointsReferrals({Key? key}) : super(key: key);

  @override
  State<PointsReferrals> createState() => _PointsReferralsState();
}

class _PointsReferralsState extends State<PointsReferrals> {
  bool showSeeAll = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Баллы с рефералов",
            style: TextStyle(
                color: Color(0xFF0C6170),
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        ),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          onPressed: () {
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: const Color(0xFFF4F4F4),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
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
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Операции",
            style: TextStyle(
                color: Color(0xFF0C6170),
                fontWeight: FontWeight.w600,
                fontSize: 24),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "За сегодня",
            style: TextStyle(
                color: Color(0xFF37B3B0),
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children:
                  List.generate(showSeeAll ? 5 : 2, (index) => listShop()),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "За неделю",
            style: TextStyle(
                color: Color(0xFF37B3B0),
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children:
                  List.generate(showSeeAll ? 10 : 5, (index) => listShop()),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                showSeeAll = !showSeeAll;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Смотреть все",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                showSeeAll
                    ? const Icon(Icons.keyboard_arrow_up_rounded)
                    : const Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listShop() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Покупка “Имя члена сети”",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      "12.02.22",
                      style: TextStyle(
                          color: Color(0xFF353535),
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Детали покупки",
                      style: TextStyle(
                          color: Color(0xFF353535),
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
            const Text(
              "+345",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20),
            ),
          ],
        ),
        const Divider(
          color: Color(0xFFD1D5FF),
          thickness: 2,
        )
      ],
    );
  }
}
