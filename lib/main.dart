import 'package:flutter/material.dart';
import 'package:flutter_sala/route_generator.dart';
//import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sala',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ruolo'),
        ),
        body: Center(
          child: Column(
            children: [
              Card(
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushNamed(context, '/Table');
                  },
                  child: SizedBox(
                    width: 200,
                    height: 100,
                    child: Align(
                      alignment: Alignment
                          .center, // Align however you like (i.e .centerRight, centerLeft)
                      child: Text(
                        'Sala',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushNamed(context, '/Table');
                  },
                  child: SizedBox(
                    width: 200,
                    height: 100,
                    child: Align(
                      alignment: Alignment
                          .center, // Align however you like (i.e .centerRight, centerLeft)
                      child: Text(
                        'Cucina',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.blue,
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    Navigator.pushNamed(context, '/Table');
                  },
                  child: SizedBox(
                    width: 200,
                    height: 100,
                    child: Align(
                      alignment: Alignment
                          .center, // Align however you like (i.e .centerRight, centerLeft)
                      child: Text(
                        'Cassa',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
