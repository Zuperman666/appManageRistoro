import 'package:flutter/material.dart';

class SpinBox extends StatefulWidget {
  final String name;
  final int quantita;
  SpinBox(this.name, this.quantita, {Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<SpinBox> {
  String _name;
  int _quantita;
  bool showModal = false;
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  void change() {
    print(showModal);
    setState(() {
      showModal = !showModal;
    });
  }

  _printLatestValue() {
    print("Second text field: ${myController.text}");
  }

  @override
  void initState() {
    myController.addListener(_printLatestValue);
    super.initState();
    _name = widget.name;
    _quantita = widget.quantita;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: (const EdgeInsets.symmetric(vertical: 10.0)),
            child: new Align(
              alignment: Alignment
                  .center, // Align however you like (i.e .centerRight, centerLeft)
              child: RichText(
                text: TextSpan(
                    text: _name.toUpperCase(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20)),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: Icon(Icons.remove),
            onPressed: () => {_quantita--},
          ),
          RichText(
            text: TextSpan(
                text: _quantita.toString().toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 16)),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Icon(Icons.add),
            onPressed: () => {_quantita++},
          )
        ],
      ),
      Visibility(
          visible: (showModal == false),
          child: Row(
            children: [
              new Flexible(
                  child: TextButton(
                child: Icon(Icons.note),
                onPressed: change,
              )),
            ],
          )),
      Visibility(
          visible: (showModal == true),
          child: Row(
            children: [
              new Flexible(
                  child: new TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Note',
                ),
              )),
            ],
          ))
    ]);
  }
}
