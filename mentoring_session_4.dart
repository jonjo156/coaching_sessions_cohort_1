// Jay

import 'dart:convert';

void main() {
  final jsonString =
      '{"no_of_comments":8,"sentiment":"Bullish","sentiment_score":0.488,"ticker":"JPM"}';
  final jsonDecoded = jsonDecode(jsonString);
  final Stock? stock = Stock.fromJson(jsonDecoded);

  String bankHolidayJson = '{"title": "Kings birthday", "date": "5th June"}';
  dynamic bankHolidayJsonDecoded = jsonDecode(bankHolidayJson);
  BankHoliday bankHoliday = BankHoliday.fromJson(bankHolidayJsonDecoded);
}

Map randomMap = {'number1': 1, 'number2': 2};

List randomList = [1, 2, 3, 4];

class Stock {
  final String ticker;
  final String sentiment;
  final double sentimentScore;
  final int numberOfComments;

  Stock({
    required this.ticker,
    required this.sentiment,
    required this.sentimentScore,
    required this.numberOfComments,
  });

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
      ticker: json['ticker'],
      sentiment: json['sentiment'],
      sentimentScore: json['sentiment_score'].toDouble(),
      numberOfComments: json['no_of_comments'],
    );
  }
}

// Tom
class BankHoliday {
  String? title;
  String date;
// Not sure what type the date should be,
  BankHoliday({this.title, required this.date});

  factory BankHoliday.fromJson(Map json) {
    return BankHoliday(
      title: json['title'],
      date: json['date'],
    );
  }
}

// https://www.gov.uk/bank-holidays.json

// static methods

class RandomClass {
  String name = 'Jonjo';

  void printName(String name) {
    print(name);
  }
}

// Parameters for methods and functions

void multiplyIntegers(int int1, int sentimentScore) {
  print(int1 * sentimentScore);
}

// type safety

// null safety

List jonjosList = [5, 10, 20];

void printFirstItemInList(List randomList) {
  print(jonjosList.first);
  jonjosList.add(29);
  double age = 43;
  age.toString();
}
