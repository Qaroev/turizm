import 'package:flutter/material.dart';
import 'package:turizm/pages/auth/registration.dart';

import '../home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController textEditingControllerPhone = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
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
          padding: const EdgeInsets.only(top: 250),
          child: Container(
            width: double.infinity,
            height: 800,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
              child: ListView(
                children: [
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Войти',
                      style: TextStyle(
                        color: Color(0xFF0C6170),
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    height: 74,
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
                    height: 74,
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
                          controller: textEditingControllerPassword,
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
                  const SizedBox(height: 50),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
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
                        'Войти',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationPage()));
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: Color(0xFFAFAFAF))),
                      alignment: Alignment.center,
                      child: const Text(
                        'Зарегистрироваться',
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
      ),
    );
  }
}
