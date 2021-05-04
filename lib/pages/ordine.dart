import 'package:flutter/material.dart';
import 'package:flutter_sala/model/interface.dart';
import 'package:flutter_sala/widget/alertDelete.dart';

class Order extends StatelessWidget {
  final Data data;
  Order(this.data,{Key key}) : super(key: key);

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
      showDialog(context: context, builder: (BuildContext context) => baseDialog);
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
      body: Center (
        child:Row(
        children: [
          Container(
            padding: EdgeInsets.all(80.0),
            child: ElevatedButton(
              child: Text('Invia'),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/catalog');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
