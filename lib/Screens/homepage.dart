import 'package:flutter/material.dart';

class HomepageG extends StatefulWidget {
  const HomepageG({Key? key}) : super(key: key);

  @override
  _HomepageGState createState() => _HomepageGState();
}

class _HomepageGState extends State<HomepageG> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: Colors.lightBlue,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Text(
                    '  Welcome To\n  Smart Doctor',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 120,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: 150,
                          width: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Image.asset(
                            'images/coronavirus.png',
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 22,
                          left: 15,
                          child: Text(
                            'Wear Mask\nGet Vaccinated\nStay Safe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height: 70,
                                  width: 146,
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          spreadRadius: 5,
                                          blurRadius: 5,
                                          offset: Offset(5, 5),
                                        ),
                                      ]),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 4,
                                                left: 25,
                                                right: 25,
                                                bottom: 4),
                                            child: Container(
                                              height: 40,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                              ),
                                              child:
                                              Image.asset('images/mlfml.png'),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 20,
                                  top: 48,
                                  child: Text(
                                    'Male/Female',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height: 70,
                                  width: 148,
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          spreadRadius: 5,
                                          blurRadius: 5,
                                          offset: Offset(5, 5),
                                        ),
                                      ]),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 4,
                                                left: 21,
                                                right: 21,
                                                bottom: 4),
                                            child: Container(
                                              height: 40,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(100),
                                              ),
                                              child:
                                              Image.asset('images/heart.png'),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 19,
                                  top: 48,
                                  child: Text(
                                    'Find Hospital',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )),
                Stack(children: [
                  Positioned(
                    child: Container(
                      height: 120,
                      width: 400,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Container(
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreen,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 10,
                                      blurRadius: 10,
                                      color: Colors.black12,
                                    )
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5, right: 15, left: 15, bottom: 30),
                                child: Image.asset(
                                  'images/gentreat.png',
                                ),
                              ),
                            ),
                            left: 50,
                          ),
                          Positioned(
                              left: 110,
                              top: 75,
                              child: TextButton(onPressed: (){
                               // Navigator.push(context, MaterialPageRoute(builder: (context)=>DataPassGenCon()));
                              },
                                  child: Text(
                                    'General Treathment',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )
                              )
                          )
                        ],
                      ),
                    ),
                  )
                ]),
                Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.white,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Center(
                            child: Container(
                              child: Text(
                                'Order Medicine',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                  height: 104,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            height: 80,
                            width: 155,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 10,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: ListTile(
                              leading: Icon(Icons.medical_services),
                              trailing: Text('Buy Medicine'),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            height: 80,
                            width: 155,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 10,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: ListTile(
                              leading: Icon(Icons.medical_services),
                              trailing: Text('Buy Medicine'),
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
