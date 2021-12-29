import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    Map? data = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
        child: SafeArea(
          child: Column(children: <Widget>[
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Location')),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['location'],
                  style: const TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              data['time'],
              style: const TextStyle(
                fontSize: 66.0,
              ),
            )
          ])
        ),
      )
    );
  }
}
