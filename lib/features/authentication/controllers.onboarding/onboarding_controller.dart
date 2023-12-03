
import 'package:cartzy_ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance =>Get.find();

  //varables
  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;


  //update Current Index whwn page scroll
  void updatePageIndicator(index)=>currentPageIndex.value=index;


  //Jump to the specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  //update current Index & Jump to next page
  void nextPage(){
    if (currentPageIndex.value==2) {
      Get.offAll(const LoginScreen());
    }else{
      int page=currentPageIndex.value+1;
      pageController.jumpToPage(page);
      
    }
  }

  //update current index & jump to the last page

  void skipPage(){
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
  
}