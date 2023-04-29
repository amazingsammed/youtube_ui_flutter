import 'package:flutter/material.dart';
import 'package:youtube/models/video_model.dart';

import '../../../constants/imageitem.dart';

class DownloadsTile extends StatelessWidget {
  int index;
  List<YoutubeModel> listData;
  DownloadsTile({Key? key, required this.listData, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: width / 2,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: Imageitem(listData[index].thumbNail),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  contentPadding: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  dense: true,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: Text(listData[index].title),
                  ),
                  subtitle: Text(
                      "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}"),
                  trailing: Container(
                      margin: const EdgeInsets.only(bottom: 30.0),
                      child: Icon(Icons.more_vert)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
