import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:tiktok_clone_app/models/article.dart';

import 'news_repository.dart';

class NewsApi extends NewsRepository {
  final keyApi = 'a51671adb7b143a5b4a72bc6e35079bb';

  @override
  Future<List<Article>> fetchAllNews() async {
    final url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$keyApi';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final json = body['articles']!;

      return json.map<Article>((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception(
          'Status Code: ${response.statusCode} Body: ${response.body}');
    }
  }

  @override
  Future<List<Article>> fetchCategory(Category category) async {
    final url =
        'https://newsapi.org/v2/top-headlines?country=us&category=${category.name}&apiKey=$keyApi';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      print('######################################');
      print('######################################');
      print('######################################');
      print('######################################');
      print(body.toString());
      final json = body['articles']!;
      print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
      print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
      print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
      print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
      print(json);

      return json.map<Article>((json) => Article.fromJson(json)).toList();
    } else {
      throw Exception(
          'Status Code: ${response.statusCode} Body: ${response.body}');
    }
  }
}
