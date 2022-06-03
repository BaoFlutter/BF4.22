// 1. Tạo Provider

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/video.dart';

class VideoListController extends GetxController  {
  List<Video> videoList = [];

  updateVideoListOnGetXController({required List<Video> videoList}){
    this.videoList = videoList;
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