import 'package:flutter/material.dart';
import 'package:manga_app_project/resource/color.dart';

// ignore: use_function_type_syntax_for_parameters
Column titleSubText(String title, Function showMore, [bool isShowmore = true]) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            overflow: TextOverflow.clip,
            style: TextStyle(
                color: subTitleTextColor,
                fontSize: 12,
                fontWeight: FontWeight.normal),
          ),
          InkWell(
            onTap: () => showMore,
            child: Text(
              isShowmore ? '< show more  >' : '',
              style: TextStyle(
                  color: showMoreButtonColor,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
      SizedBox(
        height: 16,
      ),
    ],
  );
}
