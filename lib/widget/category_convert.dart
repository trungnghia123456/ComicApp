import 'package:manga_app_project/model/category.dart';

String categoryConvert(List<Category> list) {
  String result = '';
  print(list);
  list.forEach((e) {
    result += ' ${e.type}';
  });

  return result.trim().replaceAll(' ', ' , ');
}
