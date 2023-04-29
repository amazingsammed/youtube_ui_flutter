import 'package:flutter/material.dart';
import 'package:youtube/models/video_model.dart';
import 'package:youtube/screens/components/customstack.dart';
import 'package:youtube/screens/home.dart';
import 'package:youtube/screens/library.dart';
import 'package:youtube/screens/shorts.dart';

import 'constants/imageitem.dart';
import 'controllers/mastercontroller.dart';
import 'package:get/get.dart';

class Master extends StatelessWidget {
  Master({Key? key}) : super(key: key);
  final MasterController controller =
      Get.put(MasterController(), permanent: false);

  @override
  Widget build(BuildContext context) {
    print('hjjjj');
    List<Widget> screens = [
      CustomStack(
        widget: Home(),
      ),

      Shorts(),
      Center(child: Text('Create')),
      Center(child: Text('Subscription')),
      CustomStack(
        widget: Library(),
      ),

      // AccountPage(),
    ];

    return Scaffold(
      body: Obx(() =>
          IndexedStack(index: controller.tabIndex.value, children: screens)),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: controller.changeTabindex,
          currentIndex: controller.tabIndex.value,
          elevation: 15,
          unselectedFontSize: 0,
          selectedFontSize: 0,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.whatshot_rounded), label: "Shorts"),
            BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: "Saves"),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                label: "Subscription"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: "Library"),
          ],
        );
      }),
    );
  }
}
