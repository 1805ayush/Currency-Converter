import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Converter{

  String baseURL= 'https://api.currencylayer.com/convert?access_key=';
  String apiKey = 'e8831454ea77b7fed61dd24340774b01';
  String fromCurrency;
  String toCurrency;
  String amount;

  Future convertCurrency(fromCurrency,toCurrency,amount) async{

    String requestURL="$baseURL$apiKey&from=$fromCurrency&to=$toCurrency&amount=$amount";

    http.Response response= await http.get(requestURL);
    if(response.statusCode==200){
      var decodedData = jsonDecode(response.body);
      print(decodedData);
      double price = decodedData['result'];
      print(price);

    }else{

    }


  }


}