import 'package:flutter/material.dart';

import 'package:flutter_app/pages/save.dart';
import 'package:flutter_app/pages/start1.dart';
import 'package:flutter_app/pages/start2.dart';
import 'package:flutter_app/pages/start3.dart';
import 'package:flutter_app/pages/start4.dart';
import 'package:flutter_app/pages/start5.dart';
import 'package:flutter_app/pages/intro_save.dart';
import 'package:flutter_app/pages/intro_save2.dart';
import 'package:flutter_app/pages/bunny.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: Scaffold(

        //body: Frame13(),
        body: start1(),
        // body: Frame19(),
        // body: Frame20(),
        // body: Frame21(),
        // body: Frame22(),
        // body: Frame23(),
        // body: Frame26(),
        // body: Frame28(),

      ),
    );
  }
}
