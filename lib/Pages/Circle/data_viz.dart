
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesigns/Pages/Circle/progress_ring.dart';
import '../constants.dart';
import 'neuomorphic_circle.dart';

class DataViz extends StatelessWidget {
  final bevel = 10.0;
  final blurOffset = Offset(20.0 / 2, 20.0 / 2);

  Color shadowColor = Colors.black;
  Color backgroundColor = Constants.backgroundColor;
  Color highlightColor = Colors.white24.withOpacity(0.1);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 290,
      child: AspectRatio(
          aspectRatio: 0.5,
          child: Stack(
            alignment: Alignment.center,
            children: [
              NeuomorphicCircle(
                shadowColor: shadowColor,
                backgroundColor: backgroundColor,
                highlightColor: Colors.black,
                innerShadow: true,
                outerShadow: false,
                child: SizedBox(),
              ),
              LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      width: constraints.maxWidth * 0.8,
                      height: constraints.maxWidth * 0.8,
                      child: NeuomorphicCircle(
                        innerShadow: true,
                        outerShadow: true,
                        highlightColor: Color(0xff101117),
                        shadowColor: shadowColor,
                        backgroundColor: backgroundColor,
                        child:
                        SizedBox.expand(
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    "Total Balance",
                                    style: GoogleFonts.jura(
                                        color: Colors.white54,
                                        fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Ξ 245.32",
                                    style: GoogleFonts.comfortaa(
                                        color: Colors.white,
                                        fontSize: 10,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 20.0),
              //   child: ProgressRing(progress: 0.3),
              // )
            ],
          )),
    );
  }
}