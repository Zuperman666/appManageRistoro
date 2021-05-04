import 'package:flutter/material.dart';

class BaseAlertDialog extends StatelessWidget {

  //When creating please recheck 'context' if there is an error!

  Color _color = Color.fromARGB(211,211,211,211);
  String _title;
  String _content;
  String _yes;
  String _no;
  Function _yesOnPressed;
  Function _noOnPressed;

  BaseAlertDialog({String title, String content, Function yesOnPressed, Function noOnPressed, String yes = "Yes", String no = "No"}){
    this._title = title;
    this._content = content;
    this._yesOnPressed = yesOnPressed;
    this._noOnPressed = noOnPressed;
    this._yes = yes;
    this._no = no;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text(this._title),
      content: new Text(this._content),
      backgroundColor: this._color,
      shape:
      RoundedRectangleBorder(borderRadius: new BorderRadius.circular(15)),
      actions: <Widget>[
        new TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          child: new Text(this._yes),
          onPressed: () {
            this._yesOnPressed();
          },
        ),
        new TextButton(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
          child: Text(this._no),
          onPressed: () {
            this._noOnPressed();
          },
        ),
      ],
    );
  }
}