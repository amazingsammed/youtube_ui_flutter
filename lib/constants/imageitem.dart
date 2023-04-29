import 'package:flutter/cupertino.dart';

Imageitem(String text) {
  if (text.contains('https')) return NetworkImage(text);
  return AssetImage('asset/images/youtube_logo.png');
}
