import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String? que;
  final String? ans;
  final Function? reAd;
  final Function()? fncH;

  Answer({
    @required this.que,
    @required this.ans,
    @required this.reAd,
    @required this.fncH,
  });

  @override
  Widget build(BuildContext con) {
    return ElevatedButton(
      child: Text(
        ans!.toUpperCase(),
        style: TextStyle(
          fontSize: 22,
        ),
      ),
      onPressed: () {
        reAd!(que, ans);
        fncH!();
      },
    );
  }
}
