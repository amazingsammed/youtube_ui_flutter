import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Playlists',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            trailing: SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Recently added',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            title: Text(
              'New playlist',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            leading: Icon(Icons.watch_later_outlined),
            title: Text('Watch later'),
            subtitle: Text('21 unwatched videos'),
          ),
        ],
      ),
    );
  }
}
