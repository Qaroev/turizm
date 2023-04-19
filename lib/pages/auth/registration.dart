import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
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
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: ListView(
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
                            'Повторите пароль',
                            style: TextStyle(
                              color: Color(0xFF777474),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 6),
                          TextFormField(
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
                            'Номер реферала',
                            style: TextStyle(
                              color: Color(0xFF777474),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 6),
                          TextFormField(
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
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: Color(0xFF37BEB0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
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
                    SizedBox(height: 15),
                    Container(
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
                        'Войти',
                        style: TextStyle(
                          color: Color(0xFF121212),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
