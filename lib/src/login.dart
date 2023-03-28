import 'package:flutter/material.dart';
import '../palatte.dart';
import '../widgets/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    height: 150,
                    child: Center(
                      child: Text(
                        'Inicio de sesion',
                        textAlign: TextAlign.center,
                        style: kHeading,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Column(children: [
                      //username
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'username',
                              prefixIcon: Icon(
                                Icons.radio_button_off_rounded,
                                color: Colors.blue,
                                size: 30,
                              )),
                        ),
                      ),

                      Divider(
                        height: 25,
                      ),
                      //password

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'password',
                              prefixIcon: Icon(
                                Icons.radio_button_off_rounded,
                                color: Colors.blue,
                                size: 30,
                              )),
                        ),
                      ),
                    ]),
                  ),
                  Column(
                    children: [
                      Divider(
                        height: 25,
                      ),
                      Container(
                        child: FloatingActionButton.extended(
                            onPressed: () {
                              Navigator.of(context).pushNamed('/homePage');
                            },
                            label: Text('Login')),
                      )
                    ],
                  )
                ]),
              ),
            )),
      ],
    );
  }
}
