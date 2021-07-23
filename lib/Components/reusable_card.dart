import 'package:flutter/material.dart';
import 'package:currency_converter/Components/currency_picker.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard(

      );
  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CurrencyPicker(
          'USD'
        ),
      ),
    );
  }
}