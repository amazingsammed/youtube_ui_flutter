import 'package:flutter/material.dart';
import 'package:youtube/constants/customappbar.dart';
import 'package:get/get.dart';
import 'package:youtube/screens/nextscreen/videodetails.dart';
import '../../models/video_model.dart';
import 'component/downloadscreen_downloads_tile.dart';

class DownloadsPage extends StatelessWidget {
  List<YoutubeModel> listData;
  DownloadsPage({Key? key, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                Get.to(() => VideoDetails(
                      index: index,
                      Others: listData,
                      VideoData: listData[index],
                    ));
              },
              child: DownloadsTile(index: index, listData: listData));
        },
      ),
    );
  }
}
