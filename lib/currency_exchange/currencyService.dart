import 'package:flutter/material.dart';

import 'dashboard.dart';

class CurrencyService {
  getCurrencyString(currency) {
    if (currency == "USD") return 'United State Dollar';
    if (currency == "RUB") return 'Russian Ruble';
  }

  convertCurrency(
      String fromCurrency, String toCurrency, double amount, context) {
    if (fromCurrency == 'USD') {
      switch (toCurrency) {
        case 'RUB':
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => DashboardPage(
                  currencyVal: amount,
                  convertedCurrency: (amount * 65).roundToDouble(),
                  currenctTwo: toCurrency,
                  currencyOne: fromCurrency,
                  isWhite: false)));
      }
    }

    if (fromCurrency == 'RUB') {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => DashboardPage(
                currencyVal: (amount / 65).toStringAsFixed(2),
                convertedCurrency: amount,
                currencyOne: toCurrency,
                currenctTwo: fromCurrency,
                isWhite: true,
              )));
    }
  }
}
