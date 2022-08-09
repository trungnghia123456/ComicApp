import 'package:flutter/material.dart';

import '../resource/color.dart';

Column titleText(String title) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
            color: titleColor, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 16,
      ),
    ],
  );
}
