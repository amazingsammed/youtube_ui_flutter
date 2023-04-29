import 'package:flutter/material.dart';
import 'package:youtube/models/video_model.dart';
import 'package:get/get.dart';
import 'package:youtube/screens/nextscreen/videodetails.dart';
import '../constants/customappbar.dart';
import 'components/hometile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: ListView.separated(
        itemCount: youtubeData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
              onTap: () {
                Get.to(
                  () => VideoDetails(
                      VideoData: youtubeData[index],
                      Others: youtubeData,
                      index: index),
                );
              },
              child: HomeTile(
                index: index,
                listData: youtubeData,
              ));
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          height: 15,
        ),
      ),
    );
  }
}
