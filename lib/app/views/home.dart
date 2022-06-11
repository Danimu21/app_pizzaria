// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/views/cardapio.dart';
import 'package:flutter_application_1/app/views/delivery.dart';
import 'package:flutter_application_1/app/views/fidelidade.dart';

class Home_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //retorna ao main() toda funcionalidade estrutural/grafica do material design
    return MaterialApp(
        //Scaffold -> cria a plataforma onde o App será construido
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.red, title: Text('Pizza Planet')),
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 262,
                  alignment: Alignment.topCenter,
                  child: Stack(children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: Image.network(
                            'https://pizzariadesucesso.com/wp-content/uploads/2018/05/pepperoni-pizza.jpg',
                            fit: BoxFit.fill)),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        height: 80,
                        color: Color.fromARGB(130, 0, 0, 0),
                        child: Column(children: [
                          Text('Quem prova não esquece',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            'Pepperoni',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                      ),
                    )
                  ]),
                ),
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Delivery()),
                          );
                        },
                        label: Text('Delivery',
                            style: TextStyle(
                                fontSize: 36.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        icon: Icon(Icons.delivery_dining,
                            size: 70.0, color: Colors.black45),
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.redAccent),
                            minimumSize:
                                MaterialStateProperty.all(Size(377, 90))),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => Fidelidade()),
                          );
                        },
                        label: Text('Fidelidade',
                            style: TextStyle(
                                fontSize: 36.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        icon: Icon(Icons.heart_broken,
                            size: 70.0, color: Colors.black45),
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.blueAccent),
                            minimumSize:
                                MaterialStateProperty.all(Size(377, 90))),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Cardapio()),
                          );
                        },
                        label: Text('Cardápio',
                            style: TextStyle(
                                fontSize: 36.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        icon: Icon(Icons.menu_book,
                            size: 70.0, color: Colors.black45),
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Colors.greenAccent),
                            minimumSize:
                                MaterialStateProperty.all(Size(377, 90))),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
