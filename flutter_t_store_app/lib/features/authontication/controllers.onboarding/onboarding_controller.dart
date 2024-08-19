import 'package:get/get.dart';

class OnBoardingController extends GetxController{
    static OnBoardingController get instance => Get.find();

    ///Variables

  ///Update current index when page scroll
    void updatePageIndicator(index){}

  ///Jump to the specific dot selected page
    void dotNavigationClick(index){}

  ///Update current index & jump to next page
   void nextPage(){}

  ///Update current index & jump to the last page

  void skipPage(){}

}