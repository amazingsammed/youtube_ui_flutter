
import 'package:flutter/material.dart';
import 'package:youtube/constants/Spacers.dart';

import '../../constants/iconwithtext.dart';

class ShortsTile extends StatelessWidget {
  const ShortsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Shorts'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        children: [
          Positioned(

            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Container(

              margin: KSize20,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(),
                         KSizedBox10,
                          Text('@Usrename',style: WhiteStyle,),
                          KSizedBox10,
                          Container(
                            padding: KSize5,

                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text('Subscribe',style: TextStyle(
                              color: Colors.white
                            ),),
                          )
                        ],
                      ),
                      Text('sfsm,fsndfns,mnsdmf,ns,f dfns,f.,sf',maxLines: 3,overflow: TextOverflow.fade,style: WhiteStyle)
                    ],
                  ),
                  KSizedBox20,
                  Column(
                    children: [
                      IconWithText(text: '1.9m', icon: Icons.thumb_up,color: Colors.white,),
                      KSizedBox20,
                      IconWithText(text: '1.9m', icon: Icons.thumb_down,color: Colors.white,),
                      KSizedBox20,
                      IconWithText(text: '1.9m', icon: Icons.message,color: Colors.white,),
                      KSizedBox20,
                      IconWithText(text: '1.9m', icon: Icons.upload,color: Colors.white,),
                      KSizedBox20,
                      IconWithText(text: '1.9m', icon: Icons.repeat,color: Colors.white,),
                      KSizedBox20,
                      KSizedBox20,
                      KSizedBox20,
                      IconWithText(text: '1.9m', icon: Icons.account_circle_outlined,),
                      KSizedBox10,
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
