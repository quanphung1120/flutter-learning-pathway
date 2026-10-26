// Module 13: UI Rebuilding with ListenableBuilder
// Implementation of ListenableBuilder and status-based switch statement in _ArticleViewState

import 'package:flutter/material.dart';
import 'module_12_change_notifier.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({super.key, required this.viewModel});

  final ArticleViewModel viewModel;

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.fetchRandomArticle();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, child) {
        switch (widget.viewModel.status) {
          case LoadingStatus.loading:
            return const Center(child: CircularProgressIndicator());
          case LoadingStatus.error:
            return const Center(child: Text('Error loading article.'));
          case LoadingStatus.loaded:
            final article = widget.viewModel.article;
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  if (article?.thumbnail?.source != null)
                    Image.network(article!.thumbnail!.source),
                  const SizedBox(height: 12),
                  Text(
                    article?.titles.normalized ?? '',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(article?.extract ?? ''),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: widget.viewModel.fetchRandomArticle,
                    child: const Text('Next random article'),
                  ),
                ],
              ),
            );
        }
      },
    );
  }
}
