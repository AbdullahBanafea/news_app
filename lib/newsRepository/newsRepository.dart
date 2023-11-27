import 'package:news/models/newsModel.dart';
import 'package:dio/dio.dart';

class NewRepository {

  Future<NewsModel> getNews() async {
    final response = await Dio().get('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=b3bcb22d12334c048e68ed3dee9b4550');
    final data = NewsModel.fromJson(response.data);
    return data;
  }
}







// void main() async{
//
//   Future.delayed(Duration(seconds: 3), () => print('3 second'));
//   print('Hello world!');
//   final test = await displayTest();
//   print(test);
//   Future.delayed(Duration(seconds: 2), () => print('2 second'));
//   print('Hey!');
//   Future.delayed(Duration(seconds: 1), () => print('1 second'));
// }
//
// Future<String> displayTest() {
//   final Future<String> value = Future.value('hello from the futer');
//   return value;
// }