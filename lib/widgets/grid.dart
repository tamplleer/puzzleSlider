import 'package:family_tree/model/ElementModel.dart';
import 'package:family_tree/widgets/puzzleElement.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  List<ElementModel> puzzle = [];
  var size;
  Function clickGrid;

  Grid(this.puzzle, this.size, this.clickGrid, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = size.height;
    return Container(
      height: height * 0.60,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemCount: puzzle.length,
          itemBuilder: (BuildContext context, int index) {
            return puzzle[index].getId() != 1
                ? PuzzleElement(puzzle[index].getName(), () {
                    clickGrid(index);
                  }, puzzle[index].getColor())
                : const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
