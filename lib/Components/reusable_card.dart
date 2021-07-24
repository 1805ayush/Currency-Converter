import 'package:flutter/material.dart';
import 'package:currency_converter/Components/currency_picker.dart';

class ReusableCard extends StatelessWidget{
  ReusableCard(

      );
  @override
  Widget build(BuildContext context) {

    return Container(
      child:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CurrencyPicker(
                  'USD'
              ),
            ),
            Padding(
                padding:  const EdgeInsets.all(8.0),
                child: TextField(

                ),
            )
          ],
        )
    );
  }
}