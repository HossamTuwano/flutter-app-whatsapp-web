import 'dart:html';

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final users = [
    {'name': 'Ali Kiba', 'msg': "Yo"},
    {'name': 'Darth Vader', 'msg': "im surround by dead people"},
    {'name': 'Obi wan kenobi', 'msg': "you were my brother anakin"},
    {'name': 'luke Skywalker', 'msg': "may the force be with you"},
    {'name': 'yoda', 'msg': "do or do not never try"},
    {'name': 'gandhi', 'msg': "karma is real"},
    {'name': 'louise blecher', 'msg': "I'll see you in hell"},
    {'name': 'Anorld Schwarzenegger', 'msg': "I'll be back"},
    {'name': 'cooper', 'msg': "This Little Maneuver's Gonna Cost Us 51 Years"},
    {'name': 'tony stark', 'msg': "i love you 3000"},
    {'name': 'magu', 'msg': "hap kazi tu"},
    {'name': 'samia', 'msg': "kazi iendelee"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "WhatsApp",
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                  width: 1600,
                  height: 100,
                  color: const Color.fromRGBO(0, 150, 136, 1)),
              Container(
                margin: const EdgeInsets.only(
                  right: 50,
                  left: 50,
                  top: 40,
                ),
                width: 1500,
                height: 700,

                // color: Colors.white,
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 10,
                      blurRadius: 90)
                ]),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          color: Colors.white,
                          height: double.infinity,
                          width: 50,
                          child: Column(
                            children: <Widget>[
                              Container(
                                  color: const Color.fromRGBO(238, 238, 238, 1),
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const CircleAvatar(
                                        radius: 25,
                                        backgroundImage: AssetImage(
                                          "images/avatar_profile.png",
                                        ),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.message,
                                            color: Color.fromRGBO(
                                                118, 118, 118, 1),
                                          ),
                                          Icon(
                                            Icons.more_vert,
                                            color: Color.fromRGBO(
                                                118, 118, 118, 1),
                                          )
                                        ],
                                      )
                                    ],
                                  )),
                              Container(
                                  width: double.infinity,
                                  color: const Color.fromRGBO(238, 238, 238, 1),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                        width: 400,
                                        // padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Row(
                                          children: const [
                                            Icon(Icons.search),
                                            Padding(
                                              padding: EdgeInsets.all(10),
                                              child: SizedBox(
                                                width: 350,
                                                height: 20,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      fillColor: Colors.red,
                                                      border: InputBorder.none,
                                                      hintText:
                                                          "Search or start a new chat"),
                                                ),
                                              ),
                                            )
                                          ],
                                        )),
                                  )),
                              Expanded(
                                child: SizedBox(
                                  height: 200.0,
                                  child: ListView.builder(
                                      itemCount: users.length,
                                      itemBuilder: (context, index) {
                                        var user = users[index]
                                            .entries
                                            .map((MapEntry user) => user.value)
                                            .toList();

                                        var hour = new DateTime.now().hour;
                                        var min = new DateTime.now().minute;

                                        return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 1, horizontal: 4),
                                            child: ListTile(
                                              title: Text(
                                                user.first[0]
                                                        .toString()
                                                        .toUpperCase() +
                                                    user.first.substring(1),
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              subtitle: Text(user.last),
                                              leading: const CircleAvatar(
                                                radius: 24,
                                              ),
                                              trailing: Text('$hour:$min'),
                                            ));
                                      }),
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      color: const Color.fromRGBO(238, 238, 238, 1),
                      height: double.infinity,
                      width: 1000,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Container(
          //   margin:
          //       const EdgeInsets.only(bottom: 50, left: 50, right: 50, top: 0),
          //   height: 650,
          //   width: 2000,
          //   decoration: BoxDecoration(color: Colors.white, boxShadow: [
          //     BoxShadow(
          //       color: Colors.grey.withOpacity(0.8),
          //       spreadRadius: 10,
          //       blurRadius: 90,
          //       // offset: const Offset(0, 7),
          //     )
          //   ]),
          // ),
        ));
  }
}
