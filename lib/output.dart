import 'package:flutter/material.dart';

class OutputResult extends StatelessWidget {
  final String? s;
  final Function() fnc;

  OutputResult(this.fnc, this.s);

  @override
  Widget build(BuildContext con) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red.shade100,
          ),
          child: Column(
            children: [
              Text(
                'No Question Found!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton.icon(
                onPressed: fnc,
                icon: Icon(
                  Icons.restart_alt,
                  color: Colors.green,
                  size: 80,
                ),
                label: Text(
                  'Restart Again',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Your Favorite Item Are . . . \n\n$s',
            style: TextStyle(
              fontSize: 22,
              color: Colors.indigo,
            ),
          ),
        ),
      ],
    );
  }
}
