import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MasterController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabindex(int index) {
    FocusManager.instance.primaryFocus!.unfocus();
    tabIndex.value = index;
  }
}
