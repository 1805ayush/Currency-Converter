import 'dart:math';

import 'package:flutter/material.dart';
import 'package:currency_converter/Components/currency_picker.dart';

class ReusableCard extends StatefulWidget{
  ReusableCard(
      this.labelText,
      this.valueAmount
      );

  String labelText;
  String valueAmount;

  @override
  _ReusableCardState createState() => _ReusableCardState(labelText,valueAmount);
}

class _ReusableCardState extends State<ReusableCard> {

  _ReusableCardState(
      this.labelText,
      this.valueAmount
      );
  String currency;
  String labelText;
  String valueAmount;
  String pickerValue;

  @override
  Widget build(BuildContext context) {
    CurrencyPicker currencyPicker =new CurrencyPicker('USD',  (pickerCurrency){
      setState(() {
        pickerValue= pickerCurrency;
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