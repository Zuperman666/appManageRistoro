import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interface.dart';
import 'package:flutter_sala/widget/scrollableMenu.dart';

class Menu extends StatelessWidget {
  final Data data;
  Menu(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child:  ScrollableMenu(Data(name: data.name, id: data.id),json)
        )
        );
  }
}
