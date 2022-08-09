import 'package:flutter/material.dart';
import 'package:manga_app_project/fake_data.dart';
import 'package:manga_app_project/model/manga.dart';
import 'package:manga_app_project/resource/color.dart';
import 'package:manga_app_project/widget/category_convert.dart';
import 'package:manga_app_project/widget/expandable_card.dart';
import 'package:manga_app_project/widget/tile_sub_text.dart';
import 'package:manga_app_project/widget/title_text.dart';
import 'package:manga_app_project/widget/truncate_string.dart';

class DetailMainPage extends StatelessWidget {
  Manga manga;
  DetailMainPage({Key? key, required this.manga}) : super(key: key);

  Widget build(BuildContext context) {
    var isExpanded = false;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: bannerColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                titleText(manga.title),
                MangaDetailCard(screenWidth: screenWidth, manga: manga),
                SynopsisContainer(screenWidth: screenWidth, manga: manga),
                GenreContainer(screenWidth: screenWidth, manga: manga),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GenreContainer extends StatelessWidget {
  const GenreContainer({
    Key? key,
    required this.screenWidth,
    required this.manga,
  }) : super(key: key);

  final double screenWidth;
  final Manga manga;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 16),
      width: screenWidth,
      height: 200,
      color: Colors.blueGrey.withOpacity(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: const Text(
              'Genre',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Wrap(
            children: manga.category
                .map((e) => Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey, width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        e.type,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}

class SynopsisContainer extends StatefulWidget {
  const SynopsisContainer({
    Key? key,
    required this.screenWidth,
    required this.manga,
  }) : super(key: key);

  final double screenWidth;
  final Manga manga;

  @override
  State<SynopsisContainer> createState() => _SynopsisContainerState();
}

class _SynopsisContainerState extends State<SynopsisContainer> {
  bool isExtended = false;
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      FittedBox(
        fit: BoxFit.fitHeight,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.symmetric(vertical: 16),
          width: widget.screenWidth,
          color: Colors.blueGrey.withOpacity(0.4),
          child: Text(
            isExtended
                ? widget.manga.synopsis
                : truncateTo(widget.manga.synopsis, 100),
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ),
      Positioned(
          bottom: -10,
          left: 0,
          right: 0,
          child: IconButton(
            onPressed: () {
              setState(() {
                isExtended = !isExtended;
              });
            },
            icon: Icon(Icons.arrow_circle_down, color: Colors.white, size: 30),
          ))
    ]);
  }
}

class MangaDetailCard extends StatelessWidget {
  const MangaDetailCard({
    Key? key,
    required this.screenWidth,
    required this.manga,
  }) : super(key: key);

  final double screenWidth;
  final Manga manga;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                manga.imageLink,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                titleSubText('By: ${manga.author}', () {}, false),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      '  7.9',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        )),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Container(
                    margin: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width / 1.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Read now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
