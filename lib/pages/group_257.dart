import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Group257 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Stack(
      children: [
          Positioned(
            left: -6.6,
            right: -5.5,
            top: -6.4,
            bottom: -5.7,
            child: SizedBox(
              width: 37,
              height: 37,
              child: SvgPicture.asset(
                'assets/vectors/Unknown',
              ),
            ),
          ),
    Container(
          padding: EdgeInsets.fromLTRB(6.6, 6.4, 5.5, 5.7),
          child: SizedBox(
            width: 24.9,
            height: 24.9,
            child: SvgPicture.asset(
              'assets/vectors/Unknown',
            ),
          ),
        ),
      ],
    );
  }
}