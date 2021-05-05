import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interface.dart';
import 'package:flutter_sala/widget/alertDelete.dart';
import 'package:flutter_sala/widget/spinbox.dart';

class Order extends StatelessWidget {
  final Data data;
  Order(this.data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _confirmRegister() {
      var baseDialog = BaseAlertDialog(
          title: "Resettare Tavolo",
          content: "Sei sicuro di voler resettare il tavolo?",
          yesOnPressed: () {},
          noOnPressed: () {},
          yes: "Si",
          no: "No");
      showDialog(
          context: context, builder: (BuildContext context) => baseDialog);
    }

    return Scaffold(
        appBar: AppBar(
            title: Text('Tavolo ${data.name}'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.more_vert),
                tooltip: 'Resettare Tavolo',
                onPressed: () {
                  _confirmRegister();
                },
              ),
            ]),
        body: Column(
          children: [
            SpinBox("test", 5),
            Container(
              padding: (const EdgeInsets.symmetric(vertical: 30.0)),
              child: TextButton(
                onPressed: () => {print('mandaconto')},
                child: Text('Invia Ordine'),
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: (const EdgeInsets.symmetric(horizontal: 10.0)),
                ),
              ),
            )
          ],
        ));
  }
}
