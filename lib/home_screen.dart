import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:currency_converter/Components/currency_picker.dart';
import 'package:currency_converter/Components/reusable_card.dart';
import 'converter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String amount='1';
  Converter con = new Converter();


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ReusableCard rc1 = new ReusableCard('Enter amount',amount);
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            rc1.build(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed:() async{
                 await con.convertCurrency('INR','USD',rc1.valueAmount);
                },
                child: Icon(
                    Icons.arrow_forward_ios_outlined
                ),
              ),
            ),
            ReusableCard(
              '',
              null,
            )
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
