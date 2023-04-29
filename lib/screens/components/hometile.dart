import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/models/video_model.dart';

import '../../constants/imageitem.dart';

class HomeTile extends StatelessWidget {
  int index;
  List<YoutubeModel> listData;
  HomeTile({Key? key, required this.listData, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Imageitem(listData[index].thumbNail), fit: BoxFit.cover),
          ),
        ),
        ListTile(
          contentPadding: const EdgeInsets.all(8.0),
          dense: true,
          leading: CircleAvatar(
            backgroundImage: Imageitem(listData[index].channelAvatar),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              listData[index].title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          subtitle: Text(
              "${listData[index].channelTitle} . ${listData[index].viewCount} . ${listData[index].publishedTime}"),
          trailing: listData[index].isDownloaded
              ? null
              : Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Icon(Icons.more_vert)),
        ),
        if (listData[index].isDownloaded && false)
          Container(
            margin: EdgeInsets.only(left: 60),
            padding: EdgeInsets.symmetric(horizontal: 2),
            color: Colors.black26.withOpacity(0.2),
            child: Text(
              "Downloaded",
              style: TextStyle(color: Colors.black.withOpacity(0.4)),
            ),
          )
      ],
    );
  }
}
