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

  Widget _body() {
    return SingleChildScrollView(
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
                padding: EdgeInsets.all(1.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'lib/images/login (27).png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 1),
                      Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.purple, width: 4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        elevation: 11,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                            top: 30,
                            bottom: 30,
                          ),
                          child: Column(
                            children: [
                              TextField(
                                maxLength: 50,
                                autocorrect: false,
                                onChanged: (text) {
                                  email = text;
                                },
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: 'E-mail',
                                  icon: Icon(Icons.alternate_email),
                                  labelText: 'E-mail',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              TextField(
                                maxLength: 20,
                                autocorrect: false,
                                onChanged: (text) {
                                  password = text;
                                },
                                decoration: InputDecoration(
                                  iconColor: Colors.white,
                                  icon: Icon(Icons.password_sharp),
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 1),
                              Container(
                                width: 400,
                                child: TextButton.icon(
                                  onPressed: () {
                                    if (email == 'jason.luque@live.com' &&
                                        password == 'jasonluque') {
                                      Navigator.of(context)
                                          .pushReplacementNamed('/home');
                                    } else {
                                      print('Login incorretoooooo.');
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.white,
                                      //
                                      // BUTTON COLOR
                                      //
                                      backgroundColor: Colors.purple,
                                      shape: StadiumBorder()),
                                  icon: Icon(
                                    Icons.login_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  label: Text('Login',
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.center,
                colors: [
                  Colors.deepPurple,
                  Colors.purpleAccent,
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          ),
          _body(),
        ],
      ),
    );
  }
}
