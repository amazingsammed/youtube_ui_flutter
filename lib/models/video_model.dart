class YoutubeModel {
  String title;
  String description;
  String thumbNail;
  String publishedTime;
  String channelTitle;
  String channelAvatar;
  String viewCount;
  String likeCount;
  String dislikeCount;
  bool isDownloaded;

  YoutubeModel(
      {required this.title,
      required this.description,
      required this.thumbNail,
      required this.publishedTime,
      required this.channelTitle,
      required this.channelAvatar,
      required this.viewCount,
      required this.likeCount,
      this.isDownloaded = true,
      required this.dislikeCount});
}

List<YoutubeModel> youtubeData = [
  YoutubeModel(
    title: "Python Tutorial - Python Full Course for Beginners",
    description: "Learn python",
    thumbNail:
        "https://i.ytimg.com/vi/_uQrJ0TkZlc/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCQfkbApoaN-_QBOuiyHzWJOiziEA",
    publishedTime: "2 weeks ago",
    channelTitle: "Programing with Mosh",
    channelAvatar:
        "https://yt3.ggpht.com/tBEPr-zTNXEeae7VZKSZYfiy6azzs9OHowq5ZvogJeHoVtKtEw2PXSwzMBKVR7W0MI7gyND8=s48-c-k-c0x00ffffff-no-rj",
    viewCount: "50M views",
    likeCount: "94K",
    dislikeCount: "22K",
  ),
  YoutubeModel(
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
  ),
  YoutubeModel(
    title: "Flutter in 3 hours",
    description: "Learn Flutter",
    thumbNail: "https://i3.ytimg.com/vi/CD1Y2DmL5JM/maxresdefault.jpg",
    publishedTime: "6 days ago",
    channelTitle: "dbestech",
    channelAvatar:
        "https://yt3.ggpht.com/ytc/AMLnZu-glyOmP6yPsxdYUjvCDT5kpLx9NgVIFqnFBTUr=s68-c-k-c0x00ffffff-no-rj",
    viewCount: "53M views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
];
