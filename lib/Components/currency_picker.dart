import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// String selectedCurrency;
class CurrencyPicker extends StatelessWidget{
  CurrencyPicker(
      this.currency,
      this.onSelectedPickerChanged,
      );
  @override

  String currency;
  Function(String) onSelectedPickerChanged;
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
        onSelectedItemChanged:(selectedIndex){

            currency= currenciesList[selectedIndex];
            onSelectedPickerChanged(currency);
            print(currency);
        },
        children: pickerItems,
    );
  }
}