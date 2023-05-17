import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController textEditingControllerPhone = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPass = TextEditingController();
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
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
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
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Image.asset("assets/images/avatar.png"),
                SizedBox(width: 10,),
                SizedBox(
                  width: 200,
                    child: Text("Александр Зимин", style: TextStyle(color: Color(0xFF37B3B0), fontSize: 24, fontWeight: FontWeight.w600),))
              ],
            ),
          ),
          ListTile(
            title: Text("Телефон", style: TextStyle(color: Color(0xFF989898), fontSize: 16, fontWeight: FontWeight.w400),),
            subtitle: Container(
              child: TextFormField(
                controller: textEditingControllerPhone,
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
              child: TextFormField(
                controller: textEditingControllerEmail,
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
              child: TextFormField(
                controller: textEditingControllerPass,
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
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
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
                SizedBox(height: 10,),
                Text("+372 550 735 62", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                  ],
                ),
                SizedBox(height: 10,),
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
