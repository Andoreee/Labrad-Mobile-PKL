import 'package:flutter/material.dart';
import 'package:labrad_pkl2022/ekg/group/index.dart';
import 'package:labrad_pkl2022/laboratorium/laboratorium.dart';
import 'package:labrad_pkl2022/panduan/panduan.dart';
import 'package:labrad_pkl2022/radiologi/radiologi.dart';
import 'ekg/ekg.dart';
import 'akses/akses.dart';
import 'setup/setup.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Labrad',
      initialRoute: Akses.routeName,
      routes: {
        Akses.routeName :(context) => Akses(),
        Ekg.routeName :(context) => Ekg(),
          GroupEkg.routeName :(context) => GroupEkg(),
        Setup.routeName :(context) => Setup(),
        Laboratorium.routeName :(context) => Laboratorium(),
        Radiologi.routeName :(context) => Radiologi(),
        Panduan.routeName :(context) => Panduan(),
      },
    );
  }
}