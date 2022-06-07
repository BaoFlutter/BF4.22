import 'package:api_lession/models/video.dart';

import 'api_services.dart';

class Repository {
  final ApiServices _apiServices = ApiServices();
  // Get VideoList
  Future<List<Video>> fetchAllVideos()=> _apiServices.fetchVideoList();
  
}