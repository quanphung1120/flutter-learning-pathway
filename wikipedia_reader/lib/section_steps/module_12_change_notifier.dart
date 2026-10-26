// Module 12: State Updates with ChangeNotifier
// ArticleViewModel class extending ChangeNotifier with explicit notifyListeners() calls

import 'package:flutter/foundation.dart' hide Summary;
import '../summary.dart';
import 'module_11_http_requests.dart';

enum LoadingStatus { loading, loaded, error }

class ArticleViewModel extends ChangeNotifier {
  final ArticleModel _model = ArticleModel();

  LoadingStatus _status = LoadingStatus.loading;
  LoadingStatus get status => _status;

  Summary? _article;
  Summary? get article => _article;

  Future<void> fetchRandomArticle() async {
    _status = LoadingStatus.loading;
    notifyListeners();

    try {
      _article = await _model.getRandomArticle();
      _status = LoadingStatus.loaded;
      debugPrint('Article loaded: ${_article?.titles.normalized}');
    } catch (e) {
      _status = LoadingStatus.error;
      debugPrint('Error loading article: $e');
    }
    notifyListeners();
  }
}
