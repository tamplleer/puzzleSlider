import 'package:family_tree/utils.dart';
import 'package:flutter/material.dart';

class PuzzleElement extends StatelessWidget {
  VoidCallback click;
  String text;
  late Color _color = Colors.red;

  PuzzleElement(this.text, this.click, this._color, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      style: getStyle(_color),
      onPressed: click,
    );
  }

  ButtonStyle getStyle(Color color) {
    return ElevatedButton.styleFrom(
      // onPrimary: Colors.black87,
      //Utils.colorBlend(Color(0x80003cff), Color(0x80ff0000)),
      primary: color,
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
