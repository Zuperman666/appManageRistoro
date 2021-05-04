import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interfaceMenu.dart';


class CardMenu extends StatefulWidget {
  final Details info;
  CardMenu(this.info, {Key key})
      : super(key: key);

  @override
  _MyCardMenuWidgetState createState() => _MyCardMenuWidgetState();
}


/// This is the private State class that goes with MyStatefulWidget.
class _MyCardMenuWidgetState extends State<CardMenu> {
  Details _info;

  /// da usare per il identificare il tavolo nel servizio

  @override
  void initState() {
    super.initState();
    _info = widget.info;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color:Colors.red,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('a');
        },
        child: SizedBox(
          width: 200,
          height: 100,
          child: Align(
            alignment: Alignment
                .center, // Align however you like (i.e .centerRight, centerLeft)
            child: Text(
             _info.nome,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
