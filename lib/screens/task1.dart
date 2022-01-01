
import 'package:flutter/material.dart';
import 'package:game/screens/shape.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  bool isCircleClicked = false;
  bool isUndo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Task 1')),
      ),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: RepaintBoundary(
            child: CustomPaint(
              painter:
                  MyShapePainter(isCircle: isCircleClicked, isUndo: isUndo),
            ),
          ),
        ),
      )),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  isUndo = false;
                  isCircleClicked = true;
                });
              },
              child: const Icon(Icons.circle_outlined),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                                    isUndo = false;

                  isCircleClicked = false;
                });
              },
              child: const Icon(Icons.crop_square),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  isUndo = true;
                });
              },
              child: const Icon(Icons.undo),
            ),
          ),
        ],
      ),
    );
  }
}
