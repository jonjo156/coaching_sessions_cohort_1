void main() {
  var number = 1;

  Map<String, dynamic> json = {'field': 'Engineering', 'salary': 5.5};

  CareerSearch deserialisedCareerSearch = CareerSearch.fromJson(json);

  var salary = deserialisedCareerSearch.salary;

  print(salary);

  // 1. Return type of the method
  // 2. name of the method
  //3. Open brackets (put any data you want to maipulate)
  //4. Open curly braces to tell computer were about to do something
}

class Exercise {
  String name;
  int reps;
  int weight;

  //constructor
  Exercise(this.name, this.reps, this.weight);
}

class Person {
  int age;
  int height;
  int weight;

  Person(this.age, this.height, this.weight);
}

class Movie {
  final String name;
  final String genre;
  final double rating;
  final int runtime; // in minutes

  Movie({
    required this.name,
    required this.genre,
    required this.rating,
    required this.runtime,
  });
}

class CareerSearch {
  String? field;
  double? salary;
  double? potentialbonus;
  String? skill;
  int? vacationdays;

  CareerSearch(
      {this.field,
      this.salary,
      this.potentialbonus,
      this.skill,
      this.vacationdays});

  CareerSearch.fromJson(Map<String, dynamic> json) {
    field = json['field'];
    salary = json['salary'];
    potentialbonus = json['potential_bonus'];
    skill = json['skill'];
    vacationdays = json['vacation_days'];
  }
}

class Coffee {
  int strength;
  int size;
  bool milk;

  Coffee(this.strength, this.size, this.milk);
}
