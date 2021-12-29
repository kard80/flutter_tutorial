import 'package:flutter/material.dart';
import 'package:ninja_id/pages/home.dart';
// import 'package:ninja_id/pages/loading.dart';
import 'package:ninja_id/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    // '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation()
  },
));
