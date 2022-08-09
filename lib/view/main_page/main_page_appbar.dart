import 'package:flutter/material.dart';

AppBar MainPageAppBar(
    String userName, String userTitle, String userImage, BuildContext context) {
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
    ],
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'name',
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        Text(
          'status',
          style: TextStyle(color: Colors.white, fontSize: 14.0),
        )
      ],
    ),
    leading: new Padding(
      padding: const EdgeInsets.all(5.0),
      child: new CircleAvatar(
        backgroundImage: AssetImage('assets/image/3d_dog.jpg'),
      ),
    ),
  );
}
