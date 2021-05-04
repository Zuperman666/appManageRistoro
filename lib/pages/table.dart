import 'package:flutter/material.dart';
import 'package:flutter_sala/widget/selectTable.dart';

class TablePAge extends StatefulWidget {
  TablePAge({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TablePAge> {

  @override

  Widget build(BuildContext context) {
    List<int> textProvaId = [0, 1, 2, 3];
    List<bool> testProvaBool = [false, true, false, false];
    List<String> testProvaName = ["spiderman", "mario", "saitama", "pacman"];
    return Scaffold(
      appBar: AppBar(
        title: Text('Tavoli'),
      ),
      body: GridView(
        physics:
        BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: textProvaId
            .map((i) => MySelectTable(testProvaName[i], testProvaBool[i], i))
            .toList(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}