import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interfaceMenu.dart';

class CardMenu extends StatefulWidget {
  final Details info;
  CardMenu(this.info, {Key key}) : super(key: key);

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
      color: Colors.red,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print('a');
        },
        onLongPress: () {
          showAlertDialog(context, _info);
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

showAlertDialog(BuildContext context, Details info) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
      content: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Row(children: [
        RichText(
          text: TextSpan(
              text: "Dettagli:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20)),
        ),
      ]),
      Row(children: [Text(info.details)]),
      Row(children: [
        RichText(
          text: TextSpan(
              text: "Ingredienti:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20)),
        ),
      ]),
      Row(
        children: [Text(info.ingredienti)],
      )
    ],
  ));

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
