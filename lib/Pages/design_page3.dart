import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesigns/Pages/Circle/payment_item.dart';

import 'Circle/ammount_filter.dart';
import 'Circle/const.dart';
import 'Circle/data_viz.dart';
import 'Circle/header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff2e3638), Color(0xff101117)])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: mobilePage()
          ),
        ),
      ),
    );
  }


  Widget mobilePage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Row(
              children: [
                Icon(Icons.chevron_left_rounded, size: 60, color: Colors.greenAccent),
                Expanded(child: DataViz()),
                Icon(Icons.chevron_right_rounded, size: 60, color: Colors.greenAccent),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(60)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "  Income",
                        style: GoogleFonts.jura(
                          color: Colors.white,
                          fontSize: 15
                        )
                      ),
                      Icon(Icons.arrow_drop_down, color: Colors.white,)
                    ],
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text("Month", style: GoogleFonts.jura(
                  color: Colors.white,
                  fontSize: 15
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Text("Week", style: GoogleFonts.jura(
                  color: Colors.white54,
                  fontSize: 15
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text("Day", style: GoogleFonts.jura(
                    color: Colors.white54,
                    fontSize: 15
                ),),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 15),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: 8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.greenAccent,
                                Colors.greenAccent,
                                Colors.black54
                              ]
                          ),
                          color: Colors.white54,
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Jan", style: TextStyle(
                        color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 45),
                child: Column(
                  children: [
                    Container(
                      height: 170,
                      width: 8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.greenAccent,
                                Colors.greenAccent,
                                Colors.black54
                              ]
                          ),
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Feb", style: TextStyle(
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 75),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: 8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.greenAccent,
                                Colors.greenAccent,
                                Colors.black54
                              ]
                          ),
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Mar", style: TextStyle(
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 105),
                child: Column(
                  children: [
                    Container(
                      height: 110,
                      width: 8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.greenAccent,
                                Colors.greenAccent,
                                Colors.black54
                              ]
                          ),
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Apr", style: TextStyle(
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 25),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      width: 8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.greenAccent,
                                Colors.greenAccent,
                                Colors.black54
                              ]
                          ),
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("May", style: TextStyle(
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 65),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 8,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.greenAccent,
                                Colors.greenAccent,
                                Colors.black54
                              ]
                          ),
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Jun", style: TextStyle(
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 40),
                child: Column(
                  children: [
                    Container(
                      height: 175,
                      width: 8,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.greenAccent,
                            Colors.greenAccent,
                            Colors.black54
                          ]
                        ),
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text("Jul", style: TextStyle(
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
