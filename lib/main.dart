import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'My First Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  bool _status = false;

  void _increment() {
    setState(() {
      _counter++;
      if (_counter == 100) {
        _counter = 0;
      }
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
      if (_counter <= 0) {
        _counter = 0;
      }
    });
  }

  void _show() {
    setState(() {
      _status = !_status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber[600],
              ),
            ),
            Container(
                child: Column(
              children: <Widget>[
                Center(
                    child: Row(children: <Widget>[
                  IconButton(
                      onPressed: _increment,
                      icon: Icon(Icons.star),
                      color: Colors.red[600]),
                  IconButton(
                      icon: Icon(Icons.star),
                      onPressed: _decrement,
                      color: Colors.blue[700]),
                  IconButton(
                      icon: Icon(Icons.star),
                      onPressed: _show,
                      color: Colors.yellow[700]),
                ])),
                Text(
                  "$_counter",
                  style: Theme.of(context).textTheme.button,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
