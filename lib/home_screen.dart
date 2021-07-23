import 'package:flutter/material.dart';
import 'package:currency_converter/Components/currency_picker.dart';
import 'package:currency_converter/Components/reusable_card.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           ReusableCard(),
            FlatButton(

              child: Icon(
                  Icons.arrow_forward_ios_outlined
              ),
            ),
            ReusableCard()
          ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.arrow_forward_ios_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
