String createOrderMessage1() {
  var order = fetchUserOrder1();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder1() =>
    // Imagine that this function is more complex and slow.
Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);

Future<void> fetchUserOrder2() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

Future<void> fetchUserOrder3() {
// Imagine that this function is fetching user info but encounters a bug
  return Future.delayed(const Duration(seconds: 2),
          () => throw Exception('Logout failed: user ID is invalid'));
}


Future<String> createOrderMessage2() async {
  var order = await fetchUserOrder4();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder4() =>
    // Imagine that this function is
// more complex and slow.
Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);


Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder5();
  print('Your order is: $order');
}

Future<String> fetchUserOrder5() {
  // Imagine that this function is more complex and slow.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

// You can ignore this function - it's here to visualize delay time in this example.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}


Future<void> main() async {
  // Example: synchronous functions
  print(createOrderMessage1());

  fetchUserOrder2();
  print('Fetching user order...');

  fetchUserOrder3();
  print('Fetching user order...');


  print('Fetching user order...');
  print(await createOrderMessage2());

  countSeconds(4);
  await printOrderMessage();
}

// void main() async { ··· }
// print(await createOrderMessage());


/*
// Example: async and await with try-catch
Future<void> printOrderMessage() async {
  try {
    print('Awaiting user order...');
    var order = await fetchUserOrder();
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex.
  var str = Future.delayed(
      const Duration(seconds: 4),
      () => throw 'Cannot locate user order');
  return str;
}

void main() async {
  await printOrderMessage();
}
 */



