int? couldReturnNullButDoesnt() => -3;

// Exercise: Conditional property access
int? stringLength(String? nullableString) {
  return nullableString?.length;
}

abstract class Store {
  int? storedNullableValue;

  /// If [storedNullableValue] is currently `null`,
  /// set it to the result of [calculateValue]
  /// or `0` if [calculateValue] returns `null`.
  void updateStoredValue() {
    // TODO('Implement following documentation comment');
  }

  /// Calculates a value to be used,
  /// potentially `null`.
  int? calculateValue();
}

// Exercise: Null checking
int? getLength(String? str) {
  // Add null check here
  return str?.length;
}

void main() {
  // Exercise: Non-nullable types
  // int a;
  // a = null;
  // print('a is $a.');

  // Exercise: Nullable type parameters for generics
  // List<String> aListOfStrings = ['one', 'two', 'three'];
  // List<String> aNullableListOfStrings;
  // List<String> aListOfNullableStrings = ['one', null, 'three'];
  //
  // print('aListOfStrings is $aListOfStrings.');
  // print('aNullableListOfStrings is $aNullableListOfStrings.');
  // print('aListOfNullableStrings is $aListOfNullableStrings.');

  // Exercise: Null assertion
  // int? couldBeNullButIsnt = 1;
  // List<int?> listThatCouldHoldNulls = [2, null, 4];
  //
  // int a = couldBeNullButIsnt;
  // int b = listThatCouldHoldNulls.first; // first item in the list
  // int c = couldReturnNullButDoesnt().abs(); // absolute value
  //
  // print('a is $a.');
  // print('b is $b.');
  // print('c is $c.');


  // Exercise: Null-coalescing operators
  // Both of the following print out 'alternate' if nullableString is null
  // print(nullableString ?? 'alternate');
  // print(nullableString != null ? nullableString : 'alternate');

  // Both of the following set nullableString to 'alternate' if it is null
  // nullableString ??= 'alternate';
  // nullableString = nullableString != null ? nullableString : 'alternate';

  // Exercise: Definite assignment
  // String text;
  //
  // //if (DateTime.now().hour < 12) {
  // //  text = "It's morning! Let's make aloo paratha!";
  // //} else {
  // //  text = "It's afternoon! Let's make biryani!";
  // //}
  //
  // print(text);
  // print(text.length);


  print(getLength('This is a string!'));
}

// Exercise: Using late
// class Meal {
//   String _description;
//
//   set description(String desc) {
//     _description = 'Meal description: $desc';
//   }
//
//   String get description => _description;
// }
//
// void main() {
//   final myMeal = Meal();
//   myMeal.description = 'Feijoada!';
//   print(myMeal.description);
// }


// Exercise: Late circular references
// class Team {
//   final Coach coach;
// }
//
// class Coach {
//   final Team team;
// }
//
// void main() {
//   final myTeam = Team();
//   final myCoach = Coach();
//   myTeam.coach = myCoach;
//   myCoach.team = myTeam;
//
//   print('All done!');
// }

// Exercise: Late and lazy
// int _computeValue() {
//   print('In _computeValue...');
//   return 3;
// }
//
// class CachedValueProvider {
//   final _cache = _computeValue();
//   int get value => _cache;
// }
//
// void main() {
//   print('Calling constructor...');
//   var provider = CachedValueProvider();
//   print('Getting value...');
//   print('The value is ${provider.value}!');
// }