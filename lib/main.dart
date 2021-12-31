import 'package:flutter/material.dart';
import 'package:game/shape.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isCircleClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('GoodApp ')),
      ),
      body: SafeArea(
        child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
               // child: Text('$isCircleClicked'),
                child: RepaintBoundary(
                  child: CustomPaint(
                    painter: MyShapePainter(isCircle: isCircleClicked),
                  ),
                ),
              ),
            )),
      
      bottomNavigationBar:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
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
                  isCircleClicked = false;
                });
              },
              child: const Icon(Icons.crop_square),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: ()=>{},
              child: const Icon(Icons.undo),
            ),
          ),
        ],
      ),
    );
  }
}
