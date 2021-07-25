import 'dart:convert';
import 'package:http/http.dart' as http;

class Converter{

  String baseURL= 'https://v6.exchangerate-api.com/v6/';
  String apiKey = '286d9e5370b2cb3ccb043da0';
  String fromCurrency;
  String toCurrency;
  String amount;
  //https://v6.exchangerate-api.com/v6/YOUR-API-KEY/pair/EUR/GBP/AMOUNT

  Future convertCurrency(fromCurrency,toCurrency,amount) async{

    String requestURL="$baseURL$apiKey/pair/$fromCurrency/$toCurrency/$amount";
    print(amount);

    http.Response response= await http.get(requestURL);
    if(response.statusCode==200){
      var decodedData = jsonDecode(response.body);
      print(decodedData);
      double price = decodedData['conversion_result'];
      print(price);

    }else{
      print(response.statusCode);
    }


  }


}