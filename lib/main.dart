
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'result.dart';
import 'output.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Crash Score',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Choose One'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {

  int? _index = 0;
  String? resultString = '';
  List<Result>? re = [];

  var drinks = [
    {
      'que': 'Coffee',
      'ans': ['cappuccino', 'mexican', 'black coffee'],
    },
    {
      'que': 'Tea',
      'ans': ['milk', 'green'],
    },
    {
      'que': 'Juice',
      'ans': ['lemon', 'orange', 'soft', 'chocolate'],
    }
  ];

  //function
  void resultAdd(String? q, String? a) {
    re!.add(Result(q, a));
  }

  void fnc() {
    setState(() {
      _index = _index! + 1;
    });

    if (drinks.length == _index) {
      re!.forEach((e) {
        resultString = resultString! + '${e.q} : ${e.a}\n';
      });
    }
  }

  void restart(){
    setState(() {
      re!.clear();
      _index=0;
      resultString='';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _index! < 3
            ? Column(
                children: [
                  //question
                  Question(que: (drinks[_index!])['que'].toString()),

                  //ans list
                  ...(drinks[_index!]['ans'] as List<String>).map((e) {
                    return Answer(
                      que: (drinks[_index!])['que'].toString(),
                      ans: e.toString(),
                      reAd: resultAdd,
                      fncH: fnc,
                    );
                  }).toList(),
                ],
              )

            //no data
            : OutputResult(restart, resultString),
      ],
    );
  }
}
