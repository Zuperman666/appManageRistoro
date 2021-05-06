import 'package:flutter/material.dart';
import 'package:flutter_sala/widget/selectTable.dart';

class TablePAge extends StatefulWidget {
  final String from;
  TablePAge(this.from,{Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TablePAge> {

  String _from;

  /// da usare per il identificare il tavolo nel servizio

  @override
  void initState() {
    super.initState();
    _from = widget.from;
  }
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
            .map((i) => MySelectTable(testProvaName[i], testProvaBool[i], i,_from))
            .toList(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}