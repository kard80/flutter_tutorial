import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    Object? data = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/location');
            },
            icon: const Icon(Icons.edit_location),
            label: const Text('Edit Location'))
        ])
      )
    );
  }
}
