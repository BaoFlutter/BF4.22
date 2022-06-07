import 'package:api_lession/data_sources/api_services.dart';
import 'package:flutter/material.dart';

import '../models/video.dart';

class VideoListProvider extends ChangeNotifier {
  List<Video> videoList = [];

  getVideoList() async {
    this.videoList = await ApiServices().fetchVideoList();
    notifyListeners();
  }
}