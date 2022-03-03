import 'package:flutter/material.dart';

import '../utils.dart';

class ResultPuzzle extends StatelessWidget {
  String text;
  Color _first;
  Color _second;

  ResultPuzzle(this.text, this._first, this._second, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      style: getStyle(_first, _second),
      onPressed: () {},
    );
  }

  ButtonStyle getStyle(Color colorFirst, Color colorSecond) {
    return ElevatedButton.styleFrom(
      primary: Utils.colorBlend(colorFirst, colorSecond),
      minimumSize: Size(100, 100),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
