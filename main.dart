import 'dart:io';

void main() {
// dart는 객체 지향 언어 이며 단일상속을 지원
// dart는 모든 것이 객체이며 객체는 클래스의 인스턴스,  Object 클래스를 모두 상속
// dart는 형식을 가짐 ( 문자열 반환에서 숫자 반환 안됨)
// dart는  최상위 수준 함수와 변수를 지원
// dart는 어휘적으로 한정

  print('Hello World');

  helloWorld('dart');

  List<String> greetings = ['A', 'B', 'C'];
  helloWorldList(greetings);

  stdout.writeln('Greet somebody');
  String? input = stdin.readLineSync();
  helloWorld(input);
}

void helloWorld(String? name) {
  print('Hello World $name');
}

void helloWorldList(List<String> greetings) {
  for (var name in greetings) {
    print('Hello , $name');
  }
}
