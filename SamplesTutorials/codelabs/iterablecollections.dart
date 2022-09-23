
bool predicate(String item) {
  return item.length > 5;
}

void main(){

  // What are collections?
  // List: Used to read elements by their indexes.
  // Set: Used to contain elements that can occur only once.
  // Map: Used to read elements using a key.

  // What is an Iterable?
  // Iterable<int> iterable = [1, 2, 3];

  // Bad
  // Iterable<int> iterable = [1, 2, 3];
  // int value = iterable[1];

  // Good
  // Iterable<int> iterable = [1, 2, 3];
  // int value = iterable.elementAt(1);

  // Reading elements ->  for-in loop.
  const iterable = ['Salad', 'Popcorn', 'Toast'];
  for (final element in iterable) {
    print(element);
  }


  // Example: Using first and last
  print('---------------------------------------');
  print('The first element is ${iterable.first}');
  print('The last element is ${iterable.last}');

  // Example: Using firstWhere()
  const items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];

  // You can find with a simple expression:
  var foundItem1 = items.firstWhere((item) => item.length > 5);
  print('---------------------------------------');
  print(foundItem1);


  // Or try using a function block:
  var foundItem2 = items.firstWhere((item) {
    return item.length > 5;
  });
  print(foundItem2);

  // Or even pass in a function reference:
  var foundItem3 = items.firstWhere(predicate);
  print(foundItem3);

  // You can also use an `orElse` function in case no value is found!
  var foundItem4 = items.firstWhere(
        (item) => item.length > 10,
    orElse: () => 'None!',
  );
  print(foundItem4);

  print('---------------------------------------');

  // Checking conditions
  // Bad
  // for (final item in items) {
  //   if (item.length < 5) {
  //     return false;
  //   }
  // }
  // return true;

  // Good
  // return items.every((item) => item.length >= 5);


  // Example: Using any() and every()
  const itemsSub = ['Salad', 'Popcorn', 'Toast'];

  if (itemsSub.any((item) => item.contains('a'))) {
    print('At least one item contains "a"');
  }

  if (itemsSub.every((item) => item.length >= 5)) {
    print('All items have length >= 5');
  }

  if (itemsSub.any((item) => item.contains('Z'))) {
    print('At least one item contains "Z"');
  } else {
    print('No item contains "Z"');
  }

  print('---------------------------------------');

  // Filtering
  // var evenNumbers = numbers.where((number) => number.isEven);
  //
  // var evenNumbers = numbers.where((number) => number.isEven);
  // for (final number in evenNumbers) {
  //   print('$number is even');
  // }

  // Example: Using where()
  var evenNumbers = const [1, -2, 3, 42].where((number) => number.isEven);

  for (final number in evenNumbers) {
    print('$number is even.');
  }

  if (evenNumbers.any((number) => number.isNegative)) {
    print('evenNumbers contains negative numbers.');
  }

  // If no element satisfies the predicate, the output is empty.
  var largeNumbers = evenNumbers.where((number) => number > 1000);
  if (largeNumbers.isEmpty) {
    print('largeNumbers is empty!');
  }

  print('---------------------------------------');

  // Example: Using takeWhile
  const numbers = [1, 3, -2, 0, 4, 5];

  var numbersUntilZero = numbers.takeWhile((number) => number != 0);
  print('Numbers until 0: $numbersUntilZero');

  var numbersStartingAtZero = numbers.skipWhile((number) => number != 0);
  print('Numbers starting at 0: $numbersStartingAtZero');


  // Mapping
  // Iterable<int> output = numbers.map((number) => number * 10);
  // Iterable<String> output = numbers.map((number) => number.toString());


  print('---------------------------------------');

  // Example: Using map to change elements
  var numbersByTwo = const [1, -2, 3, 42].map((number) => number * 2);
  print('Numbers: $numbersByTwo');


}

