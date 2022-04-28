import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'PartyScreen.dart';
import 'ProfileScreen.dart';

void main() {
  runApp(const NoHomoApp());
}

class NoHomoApp extends StatelessWidget {
  const NoHomoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NoHome',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexPage = 0;
  Widget page = HomeScreen();
  List<String> titles = ['Главная', 'Мои мероприятия', 'Профиль'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titles[indexPage], style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),),
        actions: (indexPage == 1) ? [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                ));
              },
              icon: Icon(Icons.add)
          )
        ] : null,
      ),
      body: page,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (id) {
          Widget pagee = HomeScreen();
          switch (id) {
            case 1:
              pagee = PartyScreen();
              break;
            case 2:
              pagee = ProfileScreen();
              break;
          }
          setState(() {
            page = pagee;
            indexPage = id;
          });
        },
        currentIndex: indexPage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.style),
            label: 'Мероприятия'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль'
          )
        ],
      ),
    );
  }


}
