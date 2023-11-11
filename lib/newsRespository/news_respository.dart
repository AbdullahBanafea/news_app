void main() async{

  Future.delayed(Duration(seconds: 3), () => print('3 second'));
  print('Hello world!');
  final test = await displayTest();
  print(test);
  Future.delayed(Duration(seconds: 2), () => print('2 second'));
  print('Hey!');
  Future.delayed(Duration(seconds: 1), () => print('1 second'));
}

Future<String> displayTest() {
  final Future<String> value = Future.value('hello from the futer');
  return value;
}