import 'package:flutter/material.dart';
import 'package:proyecto2/palatte.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(height: 85),
                Container(
                  child: Text(
                    'Profile Info',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                ),
                Divider(height: 30),

                //cumpleaños
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(221, 199, 195, 195),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'date of birth',
                        prefixIcon: Icon(
                          Icons.brightness_medium_sharp,
                          color: Color.fromARGB(255, 46, 46, 49),
                          size: 30,
                        )),
                  ),
                ),

                //numero de telefono
                Divider(height: 60),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(221, 199, 195, 195),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Main Number',
                        prefixIcon: Icon(
                          Icons.phone_android,
                          color: Color.fromARGB(255, 46, 46, 49),
                          size: 30,
                        )),
                  ),
                ),

                Divider(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(221, 199, 195, 195),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Prymary Number',
                        prefixIcon: Icon(
                          Icons.phone_android,
                          color: Color.fromARGB(255, 46, 46, 49),
                          size: 30,
                        )),
                  ),
                ),

                //correo electronico
                Divider(height: 60),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(221, 199, 195, 195),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'main email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 46, 46, 49),
                          size: 30,
                        )),
                  ),
                ),

                //informacion de la direccion
                Divider(height: 60),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(221, 199, 195, 195),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Home Town Address',
                        prefixIcon: Icon(
                          Icons.info_sharp,
                          color: Color.fromARGB(255, 46, 46, 49),
                          size: 30,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //telefono
            FloatingActionButton(
              heroTag: "btn1",
              backgroundColor: Colors.green,
              onPressed: () {
                print('telefono');
              },
              child: Icon(
                Icons.phone,
                color: Colors.greenAccent,
              ),
            ),

            //mensaje
            FloatingActionButton(
              heroTag: "btn2",
              backgroundColor: Colors.yellow,
              onPressed: () {
                print('mensaje');
              },
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
            ),

            //estrella
            FloatingActionButton(
              heroTag: "btn3",
              backgroundColor: Colors.red,
              onPressed: () {
                print('estrella');
              },
              child: Icon(
                Icons.star,
                color: Colors.white,
              ),
            ),

            //compartir
            FloatingActionButton(
              heroTag: "btn4",
              backgroundColor: Colors.blue,
              onPressed: () {
                print('compartir');
              },
              child: Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
