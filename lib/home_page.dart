import 'package:curso_flutterando_2022/app_controller.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Image.asset(
                  'lib/images/login (23).png',
                ),
                               ),
              accountName: Text('JasonL.'),
              accountEmail: Text('jason.luque@live.com'),
            ),
            ListTile(
              leading: Icon(Icons.home_filled),
              title: Text('Início'),
              subtitle: Text('Tela de Início'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Logout'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('HomePage'),
        actions: [
          Row(
            children: [
              Text('Dark'),
            ],
          ),
          CustomSwitch()
        ],
        // leading: Icon(Icons.swipe),
        elevation: 15,
        toolbarHeight: 50,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
