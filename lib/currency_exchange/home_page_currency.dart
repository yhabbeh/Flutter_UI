import 'package:flutter/material.dart';
import 'package:mian/currency_exchange/dashboard.dart';

class HomePageCurrencyExchange extends StatefulWidget {
  const HomePageCurrencyExchange({Key? key}) : super(key: key);

  @override
  State<HomePageCurrencyExchange> createState() =>
      _HomePageCurrencyExchangeState();
}

class _HomePageCurrencyExchangeState extends State<HomePageCurrencyExchange> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DashboardPage(
          currencyVal: 0.1,
          convertedCurrency: 0.2,
          currencyOne: "USD",
          currenctTwo: "RUB",
          isWhite: false),
    );
  }
}
