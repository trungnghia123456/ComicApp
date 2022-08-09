// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:manga_app_project/model/category.dart';

class Manga {
  String id;
  String title;
  String synopsis;
  String imageLink;
  double chapter;
  String? author;
  List<Category> category;

  Manga({
    required this.id,
    required this.title,
    required this.synopsis,
    required this.imageLink,
    required this.chapter,
    this.author = 'unkhow',
    required this.category,
  });
}
