import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

String selectedCurrency;

class CurrencyPicker extends StatelessWidget{
  CurrencyPicker(
      this.currency
      );
  @override

  String currency;
  List<Text> pickerItems = [];
  void addPickerItems(){
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }
  }



  Widget build(BuildContext context) {
    return CupertinoPicker(
        backgroundColor: Colors.tealAccent,
        itemExtent: 32.0,
        onSelectedItemChanged: (selectedIndex){
            currency= currenciesList[selectedIndex];
        },
        children: pickerItems,
    );
  }
}