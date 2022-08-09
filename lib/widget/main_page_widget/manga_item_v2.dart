import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app_project/model/manga.dart';
import 'package:manga_app_project/view/detail_screen/detail_main_page.dart';
import 'package:manga_app_project/widget/category_convert.dart';
import 'package:manga_app_project/widget/truncate_string.dart';

InkWell mangaItemv2(Manga manga, BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  return InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => DetailMainPage(
                manga: manga,
              )),
    ),
    child: Container(
      width: 200,
      height: 240,
      child: Column(
        children: [
          SizedBox(
            width: 150,
            height: 120,
            child: Image.network(manga.imageLink, fit: BoxFit.fill),
          ),
          Text(
            truncateTo(manga.title, 12),
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Text(
            categoryConvert(manga.category),
            style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    ),
  );
}
