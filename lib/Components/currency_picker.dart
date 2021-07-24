import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';



String selectedCurrency;

class CurrencyPicker extends StatelessWidget{
  CurrencyPicker(
      this.currency
      );
  @override

  String currency;
  List<String> currenciesList = [
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
  List<Text> pickerItems = [];
  void addPickerItems(){
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }
  }



  Widget build(BuildContext context) {
    addPickerItems();
    return CupertinoPicker(
        backgroundColor: Colors.tealAccent,
        itemExtent: 50.0,
        onSelectedItemChanged: (selectedIndex){
            currency= currenciesList[selectedIndex];
            print(currency);
        },
        children: pickerItems,
    );
  }
}