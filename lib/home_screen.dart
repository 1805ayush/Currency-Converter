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
  String value='';
  double convertedValue;
  String rc2value;

  Converter con = new Converter();

  getData(dynamic valueResult) async{
    setState(() {
      value=valueResult.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    ReusableCard rc1 = new ReusableCard(
        'Enter amount',
        amount,
        (){
        setState(() {

      });
    });
    ReusableCard rc2= new ReusableCard(
        value,
        null,
        (){
          setState((rc2.) {
            rc2value;
          });
        }
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            rc1,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed:() async{

                convertedValue= await con.convertCurrency(rc1.pickerValue,rc2.pickerValue,rc1.valueAmount);
                getData(convertedValue);
                },
                child: Icon(
                    Icons.keyboard_arrow_down_rounded
                ),
              ),
            ),
            rc2
          ],
          
        ),
      ),
    );
  }
}
