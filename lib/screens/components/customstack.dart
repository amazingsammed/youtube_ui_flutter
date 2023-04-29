import 'package:flutter/material.dart';
import 'package:youtube/controllers/appcontroller.dart';
import 'package:get/get.dart';
import '../../constants/imageitem.dart';
import '../../models/video_model.dart';

class CustomStack extends StatelessWidget {
  AppController main = Get.put(AppController());
  Widget widget;

  CustomStack({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ok');
    double Size = 25;
    double width = MediaQuery.of(context).size.width;
    var item = main.currentdata.value;
    print(item);
    print('ok');

    return Stack(children: [
      if (item != null)
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            height: 60,
            child: Row(
              children: [
                Container(
                  width: width / 2.4,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: Imageitem(item.thumbNail))),
                ),
                SizedBox(
                  width: width / 2.3,
                  child: ListTile(
                    title: Text(
                      item.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      item.channelTitle,
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Icon(
                  Icons.play_arrow,
                  size: Size,
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    main.currentdata.value = null;
                    print('done');
                  },
                  icon: Icon(
                    Icons.close,
                    size: Size,
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
        ),
      widget,
    ]);
  }
}
