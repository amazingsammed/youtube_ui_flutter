import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/video_model.dart';
import '../nextscreen/downloadscreen.dart';

class DownloadsTile extends StatelessWidget {
  int numberOfDowloads;
  List<YoutubeModel> downloadsdata;
  DownloadsTile(
      {Key? key, this.numberOfDowloads = 0, required this.downloadsdata})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        () => DownloadsPage(
          listData: downloadsdata,
        ),
      ),
      child: ListTile(
        leading: Icon(Icons.download),
        title: Text('Downloads'),
        subtitle: Text('${numberOfDowloads} videos'),
        trailing: Icon(Icons.file_download_done_outlined),
      ),
    );
  }
}
