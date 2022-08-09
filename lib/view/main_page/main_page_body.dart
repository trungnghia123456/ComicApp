import 'package:flutter/material.dart';
import 'package:manga_app_project/fake_data.dart';
import 'package:manga_app_project/model/manga.dart';
import 'package:manga_app_project/resource/color.dart';

import 'package:manga_app_project/widget/category_convert.dart';
import 'package:manga_app_project/widget/main_page_widget/manga_item.dart';

import 'package:manga_app_project/widget/main_page_widget/manga_item_v3.dart';
import 'package:manga_app_project/widget/tile_sub_text.dart';
import 'package:manga_app_project/widget/title_text.dart';
import 'package:manga_app_project/widget/truncate_string.dart';

import '../../resource/text.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleText(ktitleUpcomingManga),
            titleSubText(ksubtitleNewComic, () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UppcomingManga(screenWidth, screenHeight),
              ],
            ),
            Container(
              width: screenWidth,
              color: bannerColor,
              height: 270,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleText(ktitleHotManga),
                  titleSubText(ksubtitleHotComic, () {}),
                  NewChaptter(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                  )
                ],
              ),
            ),
            titleText(ktitleNewComic),
            SizedBox(
              height: 16,
            ),
            titleSubText(ksubtitleNewComic, () {}),
            NewRealease(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                manga: overLord),
            SizedBox(
              height: 16,
            ),
            titleText(ktitleNewChapter),
            SizedBox(
              height: 16,
            ),
            titleSubText(ksubtitleNewChapter, () {}),
            ListPopularComic(),
            titleText(ktitleHistory),
            ListContinueReading(screenWidth, screenHeight),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'made by nguyen trung nghia',
                  style: TextStyle(
                      color: myNameColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container UppcomingManga(double screenWidth, double screenHeight) {
    return Container(
      alignment: Alignment.centerRight,
      height: screenHeight / 2,
      width: screenWidth / 1.8,
      child: PageView.builder(
          controller: PageController(
              viewportFraction: 0.8, keepPage: true, initialPage: 0),
          itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                alignment: Alignment.center,
                height: screenHeight / 2,
                width: screenWidth / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(mangas[index].imageLink),
                        fit: BoxFit.fill)),
                child: titleText(mangas[index].title),
              )),
          itemCount: mangas.length),
    );
  }

  SizedBox ListContinueReading(double screenWidth, double screenHeight) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight / 3,
      child: ListView.builder(
        itemBuilder: (context, index) => mangaItem(mangas[index], context),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class NewChaptter extends StatelessWidget {
  const NewChaptter(
      {Key? key, required this.screenHeight, required this.screenWidth})
      : super(key: key);
  final screenWidth;
  final screenHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight / 4,
      child: ListView.builder(
        itemBuilder: (context, index) => mangaItemv3(mangas[index], context),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class ListPopularComic extends StatelessWidget {
  const ListPopularComic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      spacing: 20,
      children:
          mangas.getRange(0, 5).map((e) => mangaItem(e, context)).toList(),
    );
  }
}

class NewRealease extends StatelessWidget {
  Manga manga;
  NewRealease({
    required this.manga,
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight / 3,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: bannerColor,
              image: DecorationImage(
                  opacity: 0.4,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    manga.imageLink,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleText(manga.title),
                        Text(
                          categoryConvert(manga.category),
                          style: TextStyle(color: titleColor, fontSize: 12),
                        ),
                        Text(
                          'SYNOPIS',
                          style: TextStyle(
                              color: titleColor, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          truncateTo(manga.synopsis, 30),
                          style: TextStyle(color: titleColor, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Image.network(
                      manga.imageLink,
                      fit: BoxFit.fitHeight,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
