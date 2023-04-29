import 'package:flutter/material.dart';

CustomAppbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.grey),
    title: Image.asset(
      'asset/images/youtube_logo.png',
      width: 98.0,
      height: 22.0,
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.cast),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.notifications_none),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.account_circle),
        onPressed: () {},
      ),
    ],
    bottom: PreferredSize(preferredSize: const Size(double.maxFinite, 50),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Container(color: Colors.red,height: 20,width: 20,)
    ],)),
  );
}
