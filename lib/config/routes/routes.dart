import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/core/constants/routes.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/pages/article_detail/article_detail.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:news_app_clean_architecture/features/daily_news/presentation/pages/saved_article/saved_article.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return _materialRoute(const DailyNews());

      case articleDetailRoute:
        return _materialRoute(
          ArticleDetailsView(
            article: settings.arguments as ArticleEntity,
          ),
        );

      case savedArticlesRoute:
        return _materialRoute(const SavedArticleView());

      default:
        return _materialRoute(const DailyNews());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
