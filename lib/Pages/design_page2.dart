import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignPage2 extends StatefulWidget {
  const DesignPage2({Key? key}) : super(key: key);

  @override
  State<DesignPage2> createState() => _DesignPage2State();
}

class _DesignPage2State extends State<DesignPage2> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff2e3638), Color(0xff101117)])),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 15.0, top: 20),
            child: Icon(Icons.scatter_plot_rounded,
                color: const Color(0xff888b8c), size: 40),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 20),
              child: FlutterSwitch(
                  height: 25,
                  width: 55,
                  borderRadius: 50,
                  switchBorder: Border.all(
                    color: Colors.transparent,
                    width: 0.1,
                  ),
                  inactiveIcon: const Icon(
                    Icons.wb_sunny,
                    color: const Color(0xff2e3638),
                    // size: 1,
                  ),
                  activeIcon: const Icon(
                    Icons.nightlight_round,
                    color: const Color(0xff2e3638),
                    size: 29,
                  ),
                  activeColor: Color(0xff6c6c6c),
                  value: isSwitchOn,
                  onToggle: (value) {
                    setState(() {
                      isSwitchOn = value;
                    });
                  }),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const SizedBox(height: 2),
             Padding(
              padding: EdgeInsets.only(top: 20.0, left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome back!",
                  style: GoogleFonts.archivo(
                    fontWeight: FontWeight.w300,
                    fontSize: 25,
                    color: Colors.white38
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, top: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi Quentin",
                  style: GoogleFonts.archivo(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.white
                  ),
                  // TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 180,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white.withOpacity(0.1)),
              child: Column(
                children: [
                  const Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white38
                              ),
                              child: Image.asset('assets/eth.png', scale: 30),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Total balance",
                                      style: GoogleFonts.archivo(
                                        color: Colors.white54,
                                        fontSize: 16
                                      )
                                      // TextStyle(color: Colors.white54, fontSize: 16),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 25.0),
                                    child: Text(
                                      "Name",
                                      style: GoogleFonts.archivo(
                                        color: Colors.white54,
                                        fontSize: 16
                                      )
                                      // TextStyle(color: Colors.white54, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children:  [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 8.0, left: 20),
                                    child: Text(
                                      "Ξ 245.32",
                                      style: GoogleFonts.archivo(
                                        color: Colors.white,
                                        fontSize: 25
                                      )
                                      // TextStyle(color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      "Quentin",
                                      style: GoogleFonts.archivo(
                                        color: Colors.white,
                                        fontSize: 25
                                      )
                                      // TextStyle(color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8.0, left: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  " ≈ \$ 763 602,65",
                                  style: TextStyle(
                                      color: Colors.white38, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children:  [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Send money",
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white70
                        )
                        // TextStyle(fontSize: 22, color: Colors.white70),
                      )),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 30.0, right: 40),
                  child: Text(
                    "See all",
                    style: GoogleFonts.comfortaa(
                      color: Colors.white38,
                      fontSize: 15
                    )
                    // TextStyle(color: Colors.white38, fontSize: 15),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Image.asset(
                                "assets/emoji_faces/face2.png",
                                scale: 17.0),
                          ),
                          Text("Dad", style: TextStyle(
                            color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                                "assets/emoji_faces/face3.png",
                                scale: 8.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text("Julia", style: TextStyle(
                                color: Colors.white
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Image.asset(
                                "assets/emoji_faces/face1.png",
                                scale: 50.0),
                          ),
                          Text("Adam", style: TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: Icon(
                        Icons.add,
                        size: 60,
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children:  [
                Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Transactions",
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Colors.white70
                        )
                        // TextStyle(fontSize: 22, color: Colors.white70),
                      )),
                ),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(top: 15.0, right: 40),
                    child: Icon(Icons.more_horiz,
                        size: 35, color: Colors.white38)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 25.0, bottom: 8, top: 10),
                            child: Image.asset(
                                "assets/transactions/transaction1.png",
                                scale: 10.0),
                          ),
                          const Text(
                            "Subscription",
                            style: TextStyle(color: Colors.white38),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 3.0, left: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "\$29.99",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only( top: 5.0, right: 30),
                            child: Image.asset(
                                "assets/transactions/transaction2.png",
                                scale: 10.0),
                          ),
                          const Text(
                            "Received money",
                            style: TextStyle(color: Colors.white38),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 3.0, left: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "\$50.00",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white.withOpacity(0.1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0, right: 20),
                            child: Image.asset(
                                "assets/transactions/transaction3.png",
                                scale: 8.0),
                          ),
                          SizedBox(height: 2),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: const Text(
                              "Mobile bill",
                              style: TextStyle(color: Colors.white38),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 3.0, left: 15),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "\$20.00",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
