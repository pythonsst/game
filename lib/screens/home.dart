import 'package:flutter/material.dart';
import 'package:game/screens/task1.dart';
import 'package:game/screens/task2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isCircleClicked = false;
  bool isUndo = false;

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: Colors.blue,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('GoodApp ')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: raisedButtonStyle,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Task1()));
              },
              child: const Text('Task1'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: raisedButtonStyle,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Task2()));
              },
              child: const Text('Task2'),
            )
          ],
        ),
      ),
    );
  }
}
