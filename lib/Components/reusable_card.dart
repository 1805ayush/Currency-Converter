import 'package:flutter/material.dart';
import 'package:currency_converter/Components/currency_picker.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard(
      this.labelText,
      this.valueAmount
      );

  String labelText;
  String valueAmount;
  String currency;
  String pickerValue;
  @override
  Widget build(BuildContext context) {
    CurrencyPicker currencyPicker =new CurrencyPicker('USD');
    return Container(
      child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: currencyPicker.build(context),
            ),
            Padding(
                padding:  const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '$labelText',
                  ),
                  onChanged: (value){
                    valueAmount=value;
                    pickerValue=currencyPicker.currency;
                  },
                ),
            )
          ],
        )
    );
  }
}