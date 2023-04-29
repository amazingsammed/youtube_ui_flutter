import 'package:flutter/material.dart';
import 'package:youtube/constants/customappbar.dart';
import 'package:youtube/models/video_model.dart';
import 'package:get/get.dart';
import '../../constants/iconwithtext.dart';
import '../../constants/imageitem.dart';
import '../../controllers/appcontroller.dart';

class VideoDetails extends StatelessWidget {
  AppController main = Get.put(AppController());
  YoutubeModel VideoData;
  int index;
  List<YoutubeModel> Others;
  VideoDetails(
      {Key? key,
      required this.VideoData,
      required this.Others,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    main.currentdatanow(VideoData);
    return Scaffold(
      appBar: CustomAppbar(),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Imageitem(VideoData.thumbNail))),
                ),
                ListTile(
                  title: Text(VideoData.title),
                  subtitle: Text(VideoData.viewCount),
                  trailing: Icon(Icons.keyboard_arrow_down_outlined),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconWithText(
                        text: VideoData.likeCount,
                        icon: Icons.thumb_up_alt_outlined,
                      ),
                      IconWithText(
                        text: '',
                        icon: Icons.thumb_down_alt_outlined,
                      ),
                      IconWithText(
                        text: 'Share',
                        icon: Icons.share,
                      ),
                      IconWithText(
                        text: 'Downloads',
                        icon: Icons.cloud_download,
                      ),
                      IconWithText(
                        text: 'Save',
                        icon: Icons.playlist_add,
                      ),
                    ],
                  ),
                ),
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: Imageitem(VideoData.channelAvatar),
                  ),
                  title: Text(VideoData.channelTitle),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'August 25, 2022',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_rounded),
            title: Text('Next:'),
            subtitle: Text('Downloads . ${index + 1}/${Others.length}'),
            trailing: Icon(Icons.keyboard_arrow_up),
          )
        ],
      ),
    );
  }
}
