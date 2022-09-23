
void main(){
  print('Hello World');
  /*
  // String interpolation ${expression}
     String 	  	                    Result
    '${3 + 2}' 	                  	'5'
    '${"word".toUpperCase()}' 	  	'WORD'
    '$myObject' 	                	The value of myObject.toString()

  // Nullable variables
    int a = null; // INVALID in null-safe Dart.
    int? a = null; // Valid in null-safe Dart.
    int? a; // The initial value of a is null.

  // Null-aware operators
    int? a; // = null
    a ??= 3;
    print(a); // <-- Prints 3.

    a ??= 5;
    print(a); // <-- Still prints 3.

    print(1 ?? 3); // <-- Prints 1.
    print(null ?? 12); // <-- Prints 12.

  // Conditional property access
    myObject?.someProperty
    (myObject != null) ? myObject.someProperty : null
    myObject?.someProperty?.someMethod()

  // Collection literals
    final aListOfStrings = ['one', 'two', 'three'];
    final aSetOfStrings = {'one', 'two', 'three'};
    final aMapOfStringsToInts = {
      'one': 1,
      'two': 2,
      'three': 3,
    };
    final aListOfInts = <int>[];
    final aSetOfInts = <int>{};
    final aMapOfIntToDouble = <int, double>{};
    final aListOfBaseType = <BaseType>[SubType(), SubType()];

  // Arrow syntax
    bool hasEmpty = aListOfStrings.any((s) {
      return s.isEmpty;
    });

    bool hasEmpty = aListOfStrings.any((s) => s.isEmpty);

    int value1 = 2;
    int value2 = 3;
    int value3 = 5;

    // Returns the product of the above values:
    int get product => TODO();

    // Adds 1 to value1:
    void incrementValue1() => TODO();

    // Returns a string containing each item in the
    // list, separated by commas (e.g. 'a,b,c'):
    String joinWithCommas(List<String> strings) => TODO();


  // Cascades
    myObject.someMethod()
    myObject..someMethod()

    var button = querySelector('#confirm');
    button?.text = 'Confirm';
    button?.classes.add('important');
    button?.onClick.listen((e) => window.alert('Confirmed!'));
    button?.scrollIntoView();

    querySelector('#confirm')
      ?..text = 'Confirm'
      ..classes.add('important')
      ..onClick.listen((e) => window.alert('Confirmed!'))
      ..scrollIntoView();

  // Getters and setters
    class MyClass {
      int _aProperty = 0;

      int get aProperty => _aProperty;

      set aProperty(int value) {
        if (value >= 0) {
          _aProperty = value;
        }
      }
    }

    class MyClass {
      final List<int> _values = [];

      void addValue(int value) {
        _values.add(value);
      }

      // A computed property.
      int get count {
        return _values.length;
      }
    }

  // Optional positional parameters
    int sumUp(int a, int b, int c) {
      return a + b + c;
    }
    // ···
      int total = sumUp(1, 2, 3);

    int sumUpToFive(int a, [int? b, int? c, int? d, int? e]) {
      int sum = a;
      if (b != null) sum += b;
      if (c != null) sum += c;
      if (d != null) sum += d;
      if (e != null) sum += e;
      return sum;
    }
    // ···
      int total = sumUpToFive(1, 2);
      int otherTotal = sumUpToFive(1, 2, 3, 4, 5);

    int sumUpToFive(int a, [int b = 2, int c = 3, int d = 4, int e = 5]) {
    // ···
    }
    // ···
      int newTotal = sumUpToFive(1);
      print(newTotal); // <-- prints 15

  // Named parameters
    void printName(String firstName, String lastName, {String? middleName}) {
      print('$firstName ${middleName ?? ''} $lastName');
    }
    // ···
      printName('Dash', 'Dartisan');
      printName('John', 'Smith', middleName: 'Who');
      // Named arguments can be placed anywhere in the argument list
      printName('John', middleName: 'Who', 'Smith');

    void printName(String firstName, String lastName, {String middleName = ''}) {
      print('$firstName $middleName $lastName');
    }

  // Exceptions
    throw Exception('Something bad happened.');
    throw 'Waaaaaaah!';

    try {
      breedMoreLlamas();
    } on OutOfLlamasException {
      // A specific exception
      buyMoreLlamas();
    } on Exception catch (e) {
      // Anything else that is an exception
      print('Unknown exception: $e');
    } catch (e) {
      // No specified type, handles all
      print('Something really unknown: $e');
    }

    try {
      breedMoreLlamas();
    } catch (e) {
      print('I was just trying to breed llamas!');
      rethrow;
    }

    try {
      breedMoreLlamas();
    } catch (e) {
      // ... handle exception ...
    } finally {
      // Always clean up, even if an exception is thrown.
      cleanLlamaStalls();
    }

  // Using this in a constructor
    class MyColor {
      int red;
      int green;
      int blue;

      MyColor(this.red, this.green, this.blue);
    }

    final color = MyColor(80, 80, 128);

    class MyColor {
      ...
      MyColor({required this.red, required this.green, required this.blue});
    }

    final color = MyColor(red: 80, green: 80, blue: 80);

    MyColor([this.red = 0, this.green = 0, this.blue = 0]);
    // or
    MyColor({this.red = 0, this.green = 0, this.blue = 0});

  // Initializer lists
    Point.fromJson(Map<String, double> json)
        : x = json['x']!,
          y = json['y']! {
      print('In Point.fromJson(): ($x, $y)');
    }

    NonNegativePoint(this.x, this.y)
        : assert(x >= 0),
          assert(y >= 0) {
      print('I just made a NonNegativePoint: ($x, $y)');
    }

   // Named constructors
    class Point {
      double x, y;

      Point(this.x, this.y);

      Point.origin()
          : x = 0,
            y = 0;
    }

    final myPoint = Point.origin();

  // Factory constructors
    class Square extends Shape {}

    class Circle extends Shape {}

    class Shape {
      Shape();

      factory Shape.fromTypeName(String typeName) {
        if (typeName == 'square') return Square();
        if (typeName == 'circle') return Circle();

        throw ArgumentError('Unrecognized $typeName');
      }
    }

  // Redirecting constructors
    class Automobile {
      String make;
      String model;
      int mpg;

      // The main constructor for this class.
      Automobile(this.make, this.model, this.mpg);

      // Delegates to the main constructor.
      Automobile.hybrid(String make, String model) : this(make, model, 60);

      // Delegates to a named constructor
      Automobile.fancyHybrid() : this.hybrid('Futurecar', 'Mark 2');
    }

  // Const constructors
    class ImmutablePoint {
      static const ImmutablePoint origin = ImmutablePoint(0, 0);

      final int x;
      final int y;

      const ImmutablePoint(this.x, this.y);
    }
  */
}