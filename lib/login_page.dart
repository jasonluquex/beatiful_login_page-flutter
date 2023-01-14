//
import 'package:curso_flutterando_2022/home_page.dart';
import 'package:flutter/material.dart';

//

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.5,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage('lib/images/login3.png'),
                                fit: BoxFit.contain,
                              ))),
                          SizedBox(height: 10),
                          TextField(
                              maxLength: 50,
                              autocorrect: false,
                              onChanged: (text) {
                                email = text;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                icon: Icon(Icons.alternate_email),
                                labelText: 'Email',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                  20,
                                )),
                                fillColor: Colors.blue,
                              )),
                          SizedBox(height: 8),
                          TextField(
                              maxLength: 20,
                              autocorrect: false,
                              onChanged: (text) {
                                password = text;
                              },
                              decoration: InputDecoration(
                                  icon: Icon(Icons.password_sharp),
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)))),
                          SizedBox(height: 15),
                          Container(
                            
                            width: 400,
                            child: TextButton.icon(
                                onPressed: () {
                                  if (email == 'jason.luque@live.com' &&
                                      password == 'jasonluque') {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomePage()));
                                  }else{
                                    print('Login incorretoooooo.');
                                  }
                                },
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.purple,
                                    shape: StadiumBorder()),
                                icon: Icon(
                                  Icons.login_rounded,
                                  size: 30,
                                ),
                                label: Text('Login',
                                    style: TextStyle(fontSize: 18))),
                          ),
                          SizedBox(height: 20)
                        ])))));
  }
}
