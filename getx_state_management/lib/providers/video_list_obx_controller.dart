// 1. Tạo Provider

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/video.dart';

class VideoListObxController extends GetxController  {
  // Obx: Observer + RxDart
  // Kiểu dữ liệu : obs
  // Convert
  // static -> obs; gắn .obs sau giá trị của biến đó
  // var numberObs = 2.obs;
  // obs -> static :  biến obs .value


  var videoListObs  = [].obs;


  updateVideoListObsOnGetXController({required List<Video> videoList}){
    this.videoListObs = videoList.obs;
    update();
  }


  /*
  List<Video> videoList = [];

  updateVideoListOnProvider({required List<Video> videoList}){
    this.videoList = videoList;
    notifyListeners();
  }

   */


}