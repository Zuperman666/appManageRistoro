import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interface.dart';


class MySelectTable extends StatefulWidget {
  final String tableName;
  final bool tableActive;
  final int tableId;
  final String from;
  MySelectTable(this.tableName, this.tableActive, this.tableId,this.from, {Key key})
      : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}


/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MySelectTable> {
  String _tableName;
  bool _tableActive;
  int _tableId;
  String _from;

  /// da usare per il identificare il tavolo nel servizio

  @override
  void initState() {
    super.initState();
    _tableName = widget.tableName;
    _tableActive = widget.tableActive;
    _from = widget.from;
    _tableId = widget.tableId;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: (_tableActive ? Colors.green : Colors.red),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          _from == 'Sala' ? Navigator.pushNamed(context, '/Menu',
              arguments: Data(name:widget.tableName,id: widget.tableId)):  Navigator.pushNamed(context, '/Order',
              arguments: Data(name:widget.tableName,id: widget.tableId));
        },
        child: SizedBox(
          width: 200,
          height: 100,
          child: Align(
            alignment: Alignment
                .center, // Align however you like (i.e .centerRight, centerLeft)
            child: Text(
              _tableName,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
