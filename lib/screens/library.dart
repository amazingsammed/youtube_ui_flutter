import 'package:flutter/material.dart';
import 'package:youtube/models/video_model.dart';
import 'package:youtube/constants/customappbar.dart';

import 'components/downloadstile.dart';
import 'components/library_playlist.dart';
import 'components/library_recent_tile.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<YoutubeModel> DowloadedList =
        youtubeData.where((element) => element.isDownloaded = true).toList();

    bool isOnline = true;
    return Scaffold(
        appBar: CustomAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (isOnline) RecentTile(),
              if (isOnline)
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('History'),
                ),
              if (isOnline)
                ListTile(
                  leading: Icon(Icons.play_arrow_rounded),
                  title: Text('Your videos'),
                ),
              DownloadsTile(
                numberOfDowloads: DowloadedList.length,
                downloadsdata: DowloadedList,
              ),
              if (isOnline)
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.local_movies_outlined),
                      title: Text('Your movies'),
                    ),
                    Divider()
                  ],
                ),
              if (isOnline) PlayList()
            ],
          ),
        ));
  }
}
