// Module 11: HTTP Requests
// Implementation of ArticleModel class using Uri.https, http.get, async/await, and jsonDecode

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../summary.dart';

class ArticleModel {
  static const String host = 'en.wikipedia.org';
  static const String endpoint = '/api/rest_v1/page/random/summary';

  Future<Summary> getRandomArticle() async {
    final uri = Uri.https(host, endpoint);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Summary.fromJson(json);
    } else {
      throw Exception('Failed to load article: ${response.statusCode}');
    }
  }
}
