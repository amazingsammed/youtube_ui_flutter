import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/models/video_model.dart';

import '../../constants/imageitem.dart';

class RecentTile extends StatelessWidget {
  const RecentTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<YoutubeModel> recentdata = youtubeData;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recent',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: recentdata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 90,
                            width: 200,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Imageitem(
                                        recentdata[index].thumbNail))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        recentdata[index].title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(recentdata[index].channelTitle,
                                          style: TextStyle(color: Colors.grey),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(Icons.more_vert)
                            ],
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider()
      ],
    );
  }
}
