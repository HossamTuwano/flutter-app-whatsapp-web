import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                          color: Colors.amber,
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
                                  ))
                            ],
                          )),
                    ),
                    Container(
                      color: Colors.blue,
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
