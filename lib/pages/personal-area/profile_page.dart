import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          "Личный кабинет",
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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          ListTile(
            leading: Image.asset("assets/images/avatar.png"),
            title: Text("Александр\nЗимин", style: TextStyle(color: Color(0xFF37B3B0), fontSize: 24, fontWeight: FontWeight.w600),),
          ),
          ListTile(
            title: Text("Телефон", style: TextStyle(color: Color(0xFF989898), fontSize: 16, fontWeight: FontWeight.w400),),
            subtitle: Container(
              height: 20,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "+372 550 735 62",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                    )
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
          ListTile(
            title: Text("Почта", style: TextStyle(color: Color(0xFF989898), fontSize: 16, fontWeight: FontWeight.w400),),
            subtitle: Container(
              height: 20,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "sanjaandreevich@gmail.com",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                    )
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          ListTile(
            title: Text("Пароль", style: TextStyle(color: Color(0xFF989898), fontSize: 16, fontWeight: FontWeight.w400),),
            subtitle: Container(
              height: 20,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Gfhjkm1237",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none
                    )
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 148,
                  height: 36,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                    child: Row(
                      children: [
                        Image.asset("assets/icons/edit.png", color: Colors.white,),
                        SizedBox(width: 10,),
                        Text("Изменить", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 216,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                      text: "Реферальный код ",
                      style: TextStyle(color: Color(0xFF37B3B0), fontSize: 20, fontWeight: FontWeight.w600),
                      children: [
                        TextSpan(
                          text: "это ваш номер телефона",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)
                        )
                      ]
                    )
                ),
                Text("+372 550 735 62", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
                Container(
                  width: 145,
                  height: 29,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Row(
                    children: [
                      Text("Скопировать", style: TextStyle(color: Color(0xFF37B3B0), fontSize: 14, fontWeight: FontWeight.w700),),
                      SizedBox(width: 5,),
                      Image.asset("assets/icons/copy.png")
                    ],
                  ),
                ),
                Text("Получайте баллы с покупок всех, кто укажет ваш реферальный код при регистрации", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w400),),
              ],
            ),
          )
        ],
      ),

    );
  }

  bool isValidEmail(String email) {
    // perform some basic email validation
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
