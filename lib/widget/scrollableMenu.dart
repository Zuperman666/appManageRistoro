import 'dart:convert';

/// Flutter code sample for TabBar

// This sample shows the implementation of [TabBar] and [TabBarView] using a [DefaultTabController].
// Each [Tab] corresponds to a child of the [TabBarView] in the order they are written.
import 'package:flutter_sala/model/interface.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interfaceMenu.dart';

import 'cardMenu.dart';

/// This is the main application widget.
class ScrollableMenu extends StatefulWidget {
  final Data data;
  final dynamic json;
  const ScrollableMenu(this.data,this.json, {Key key}) : super(key: key);
  @override
  _ScrollablePageState createState() => _ScrollablePageState();
}

/// This is the stateless widget that the main application instantiates.
class _ScrollablePageState extends State<ScrollableMenu> {
  String _name;
  int _id;
  dynamic _json;


  @override
  void initState() {
    super.initState();
    _name = widget.data.name;
    _id = widget.data.id;
    _json=widget.json;
    final dynamic jsonA = '[{"nome":"polpette","descrizione":"belle polpette","ingredienti":"forse carne buona"},{"nome":"carne","descrizione":"belle","ingredienti":"forse carne"}]';
    final jsonResponse = json.decode(jsonA);
    Food person = new Food.fromJson(jsonResponse);
    _json = person;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Menu ${_name}'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Go To Table',
              onPressed: () {
                Navigator.pushNamed(context, '/Order',
                    arguments: Data(name: _name, id: _id));
              },
            ),
          ],
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: ('Antipa'),
              ),
              Tab(
                text: ('Panini'),
              ),
              Tab(
                text: ('Bibite'),
              ),
              Tab(
                text: ('Dolci'),
              ),
              Tab(
                text: ('Altro'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: GridView(
                physics:
                BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                children: _json.dettagli.map<Widget>((i) => new CardMenu(i))
                    .toList(),
              ),
            ),
            Center(
              child: Text('It\'s cloudy here'),
            ),
            Center(
              child: Text('It\'s rainy here'),
            ),
            Center(
              child: Text('It\'s sunny here'),
            ),
            Center(
              child: Text('It\'s sunny here'),
            ),
          ],
        ),
      ),
    );
  }
}
