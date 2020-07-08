import 'package:flutter/material.dart';
import 'package:grid_layout/gridview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//creating final myGridview
  final MyGridView myGridView = MyGridView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Example"),
        ),
        body: myGridView.build(), //calling build
      ),
    );
  }
}
