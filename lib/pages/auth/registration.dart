import 'package:flutter/material.dart';
import 'package:turizm/pages/auth/login.dart';
import 'package:turizm/pages/auth/touchandpin-page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController textEditingControllerPhone = TextEditingController();
  TextEditingController textEditingControllerPass = TextEditingController();
  TextEditingController textEditingControllerNewPass = TextEditingController();
  TextEditingController textEditingControllerRef = TextEditingController();

  ScrollController controllerListView = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash3.png'),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              controller: controllerListView,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              children: [
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Color(0xFF0C6170),
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Номер телефона',
                        style: TextStyle(
                          color: Color(0xFF777474),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 6),
                      TextFormField(
                        controller: textEditingControllerPhone,
                        decoration: const InputDecoration(
                          isDense: true,
                          enabled: true,
                          contentPadding: EdgeInsets.zero,
                          hintText: "Введите номер телефон",
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Пароль',
                        style: TextStyle(
                          color: Color(0xFF777474),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 6),
                      TextFormField(
                        controller: textEditingControllerPass,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          hintText: "Введите пароль",
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Повторите пароль',
                        style: TextStyle(
                          color: Color(0xFF777474),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 6),
                      TextFormField(
                        controller: textEditingControllerNewPass,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          hintText: "Введите пароль",
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFDBF5F0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Номер реферала',
                        style: TextStyle(
                          color: Color(0xFF777474),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 6),
                      TextFormField(
                        controller: textEditingControllerRef,
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          hintText: "Введите ссылку",
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Восстановить пароль',
                        style: TextStyle(
                          color: Color(0xFF777474),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const TouchAndPinPage()));
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration:  BoxDecoration(
                      color: Color(0xFF37BEB0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
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
                    alignment: Alignment.center,
                    child: const Text(
                      'Зарегистрироваться',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                        border: Border.all(color: Color(0xFFAFAFAF))),
                    alignment: Alignment.center,
                    child: const Text(
                      'Войти',
                      style: TextStyle(
                        color: Color(0xFF121212),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
