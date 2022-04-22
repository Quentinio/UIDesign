import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff2e3638), Color(0xff101117)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
            children: [
            const SizedBox(height: 180),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 40),
            child: GradientText(
              "Crypto",
              style: GoogleFonts.lexendGiga(
                  fontSize: 45
              ),
              gradient: const LinearGradient(colors: [
                Color(0xff41D1DB),
                Color(0xff41D1DB),
                Color(0xffEAABE1),
                Color(0xffEE7BDE)
              ]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              "banking\nin most",
              style: GoogleFonts.lexendGiga(
                  fontSize: 45,
                  color: Colors.white
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 40),
            child: GradientText(
              "simple",
              style: GoogleFonts.lexendGiga(
                  fontSize: 45
              ),
              gradient: LinearGradient(colors: [
                Color(0xfffa794a),
                Color(0xff91eef0),
              ]),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              "way",
              style: GoogleFonts.lexendGiga(
                  fontSize: 45,
                  color: Colors.white
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 40, right: 35, top: 15),
          child: Text(
            "Best crypto payment method, connects your currency to your friends, family, brands and experiences.",
            style: TextStyle(fontSize: 15, color: Colors.white38),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Shimmer.fromColors(
              baseColor: Colors.white.withOpacity(0.5),
              highlightColor: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [

                  Text(
                    'Slide to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
        ),
        // Container(
        //   decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //     boxShadow: [
        //       BoxShadow(
        //         color: Color(0xfff6c1f7).withOpacity(0.3),
        //         spreadRadius: 5,
        //         blurRadius: 10,
        //         offset: Offset(0, 1)
        //       )
        //     ],
        //     gradient: const SweepGradient(
        //       stops: [0.1, 0.3, 0.5, 0.7, 1],
        //         colors: [
        //           Colors.white,
        //           Color(0xfff6c1f7),
        //           Color(0xff895c8a),
        //           Colors.white,
        //           Colors.white70,
        //         ]
        //     ),
        //   ),
        //   height: 50,
        //   width: 50,
        //   margin: const EdgeInsets.all(20),
        // )
        ],
      ),
    ),);
  }
}

class GradientText extends StatelessWidget {
  const GradientText(this.text, {
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
      shaderCallback: (bounds) =>
          gradient.createShader(
            Rect.fromLTWH(0, 0, bounds.width, bounds.height),
          ),
      child: Text(text, style: style),
    );
  }
}