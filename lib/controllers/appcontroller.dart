import 'package:get/get.dart';

import '../models/video_model.dart';

class AppController extends GetxController {
  var currentdata = Rxn<YoutubeModel>(YoutubeModel(
    title: "Decoding flutter",
    description: "Learn Flutter",
    thumbNail: "https://i3.ytimg.com/vi/DCKaFaU4jdk/maxresdefault.jpg",
    publishedTime: "16 hours ago",
    channelTitle: "Flutter",
    channelAvatar:
        "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
    viewCount: "917K views",
    likeCount: "20k",
    dislikeCount: "41",
  ));

  currentdatanow(YoutubeModel data) {
    currentdata.value = data;
    print(currentdata.value?.title);
    update();
  }
}
