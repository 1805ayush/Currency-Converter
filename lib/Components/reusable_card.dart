import 'dart:math';

import 'package:flutter/material.dart';
import 'package:currency_converter/Components/currency_picker.dart';

class ReusableCard extends StatefulWidget{
  ReusableCard(
      this.labelText,
      this.valueAmount,
      this.onSelectedCardChanged,
      this.myController
      );

  String labelText;
  String valueAmount;
  Function onSelectedCardChanged;
  TextEditingController myController;

  @override
  _ReusableCardState createState() => _ReusableCardState(labelText,valueAmount,onSelectedCardChanged,myController);
}

class _ReusableCardState extends State<ReusableCard> {

  _ReusableCardState(
      this.labelText,
      this.valueAmount,
      this.onSelectedCardChanged,
      this.mycontroller
      );
  String currency;
  String labelText;
  String valueAmount;
  String pickerValue;
  Function(String) onSelectedCardChanged;
  TextEditingController myController;



  @override
  Widget build(BuildContext context) {
    CurrencyPicker currencyPicker =new CurrencyPicker('USD',  (pickerCurrency){
      setState(() {
        pickerValue= pickerCurrency;
        onSelectedCardChanged(pickerValue);
      });
    });

    return Container(
      child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: currencyPicker,
            ),
            Padding(
                padding:  const EdgeInsets.all(8.0),
                child: TextField(
                  controller: myController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '$labelText',
                  ),
                  onChanged: (value){
                    setState(() {
                      valueAmount=value;
                      pickerValue=currencyPicker.currency;
                    });
                  },
                ),
            )
          ],
        )
    );
  }
}