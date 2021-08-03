import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:currency_converter/Components/reusable_card.dart';
import 'converter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String amount='1';
  String value='';
  double convertedValue;
  String rc1value;
  String rc2value;
  final rc1Controller =TextEditingController();
  final rc2Controller =TextEditingController();

  Converter con = new Converter();

  getData(dynamic valueResult) async{
    setState(() {
      value=valueResult.toString();
      rc2Controller.text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    ReusableCard rc1 = new ReusableCard(
        'Enter amount',
        amount,
        (pickerValue){
        setState(() {
          rc1value =pickerValue;
      });
    },
    rc1Controller
    );
    ReusableCard rc2= new ReusableCard(
        value,
        null,
        (pickerValue){
          setState(() {
            rc2value = pickerValue;
          });
        },
      rc2Controller
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
                convertedValue= await con.convertCurrency(rc1value,rc2value,rc1Controller.text);
                print(rc1.valueAmount);
                getData(convertedValue);
                },
                child: Icon(
                    Icons.keyboard_arrow_down_rounded
                ),
              ),
            ),
            rc2
          ]
        ),
      ),
    );
  }
}
