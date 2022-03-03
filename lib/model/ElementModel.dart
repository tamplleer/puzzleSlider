import 'package:flutter/material.dart';

class ElementModel {
  late Color _color;
  late String _colorName;
  int? _id;

  ElementModel(this._color, this._colorName);

  void setId(int id) {
    _id = id;
  }

  int getId() {
    return _id != null ? _id! : 0;
  }

  Color getColor() {
    return _color;
  }

  String getName() {
    return _colorName;
  }
}
