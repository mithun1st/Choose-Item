import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? que;

  Question({@required this.que});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
      child: Text(
        'What is Your Favorite $que ?',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.brown,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
