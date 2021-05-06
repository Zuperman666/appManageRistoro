import 'package:flutter/material.dart';

class OrderSelect extends StatefulWidget {
  OrderSelect({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OrderSelect> {
  var ordine = {
    "idTavolo":1,
    "ordine": [
      {
        "Antipasti": {
          "stato": "finito",
          "tipologia": [
            {"nome": "polpette", "quantita": 2, "note": ""}
          ]
        }
      },
      {
        "Panini": {
          "stato": "da fare",
          "tipologia": [
            {"nome": "Onion Knight", "quantita": 1, "note": "senza cipolla"}
          ]
        }
      }
    ]
  };
  var idTavolo = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ordini'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushNamed(context, '/KitchenOrden',
                        arguments: idTavolo);
                  },
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: Align(
                      alignment: Alignment
                          .center, // Align however you like (i.e .centerRight, centerLeft)
                      child: Text(
                        'Ordine 1',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
