import 'package:flutter/material.dart';
import 'home_page_currency.dart';


void main() => runApp(MainCurrencyExchange());
class MainCurrencyExchange extends StatefulWidget {
  const MainCurrencyExchange({Key? key}) : super(key: key);

  @override
  State<MainCurrencyExchange> createState() => _MainCurrencyExchangeState();
}

class _MainCurrencyExchangeState extends State<MainCurrencyExchange> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Currency Exchange",
      home: HomePageCurrencyExchange(),
    );
  }
}
