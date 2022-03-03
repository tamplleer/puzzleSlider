import 'package:family_tree/model/ElementModel.dart';
import 'package:family_tree/widgets/grid.dart';
import 'package:family_tree/widgets/resultPuzzle.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  Color firstColor = Colors.red;
  Color secondColor = Colors.blue;

  List<ElementModel> puzzle = [
    ElementModel(Colors.yellow, "yellow"),
    ElementModel(Colors.green, "green"),
    ElementModel(Colors.red, "red"),
    ElementModel(Colors.teal, "teal"),
    ElementModel(Colors.deepPurpleAccent, "purple"),
    ElementModel(Colors.green, "green"),
    ElementModel(Colors.red, "red"),
    ElementModel(Colors.teal, "teal"),
    ElementModel(Colors.deepPurpleAccent, "purple"),
    ElementModel(Colors.green, "green"),
    ElementModel(Colors.red, "red"),
    ElementModel(Colors.teal, "teal"),
    ElementModel(Colors.deepPurpleAccent, "purple"),
    ElementModel(Colors.green, "green"),
    ElementModel(Colors.red, "red"),
    ElementModel(Colors.teal, "teal"),
    ElementModel(Colors.deepPurpleAccent, "purple"),
    ElementModel(Colors.green, "green"),
    ElementModel(Colors.red, "red"),
    ElementModel(Colors.green, "green"),
  ];

  @override
  void initState() {
    super.initState();
    puzzle[0].setId(1);
    puzzle.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        height: size.height,
        color: Colors.blue,
        child: Column(children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Puzzle",
                style: TextStyle(
                    color: Colors.white, decoration: TextDecoration.none),
              )),
          Expanded(child: Grid(puzzle, size, clickGrid)),
          ResultPuzzle("Result", firstColor, secondColor)
        ]),
      ),
    );
  }

  void clickGrid(index) {
    var zeroElemIndex = puzzle.indexWhere((element) => element.getId() == 1);
    if (zeroElemIndex == index - 1 && index % 4 != 0 ||
        zeroElemIndex == (index + 1) && (index + 1) % 4 != 0 ||
        zeroElemIndex == (index - 4) ||
        (zeroElemIndex == index + 4)) {
      var zeroElement = ElementModel(Colors.yellow, "yellow");
      zeroElement.setId(1);
      setState(() {
        puzzle[zeroElemIndex] = puzzle[index];
        puzzle[index] = zeroElement;
        firstColor = puzzle[18].getColor();
        secondColor = puzzle[19].getColor();
        print(puzzle[18].getName());
        print(puzzle[19].getName());
      });
    }
  }
}
