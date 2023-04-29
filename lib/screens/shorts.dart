

import 'package:flutter/material.dart';
import 'package:youtube/screens/components/shortstile.dart';

class Shorts extends StatelessWidget {
  const Shorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShortsTile(),
    );
  }
}
