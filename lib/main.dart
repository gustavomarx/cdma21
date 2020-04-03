import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  List<String> _products = [
    'Computador',
    'Teste1',
    'Teste2',
  ];

  String _text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('CDM - Tarefa A2.1'))),
        body: Column(children: [
          TextField(
            onChanged: (String value) {
              _tarefas(value);
            },
          ),
          Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        print(_text);
                        _products.add(_text);
                      });
                    },
                    child: Text(
                      'Clique aqui!',
                      style: TextStyle(fontSize: 22),
                    )),
              )),
          Column(
              children: _products
                  .map((element) => Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              child: Text(
                                element,
                                style: TextStyle(fontSize: 18),
                              ),
                              padding: EdgeInsets.all(5.0),
                            )
                          ],
                        ),
                      ))
                  .toList()),
        ]),
      ),
    );
  }

  void _tarefas(String value) {
    setState(() {
      _text = value;
    });
  }
}
