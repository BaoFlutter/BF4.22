import 'package:api_lession/data_sources/api_urls.dart';
import 'package:api_lession/models/video.dart';
import 'package:api_lession/resources/strings.dart';
import 'package:api_lession/resources/utils/log.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiServices {
  // Lấy danh sách các video
  Future<List<Video>> fetchVideoList() async {
    List<Video> videoList = [] ;
    var videoListUri = ApiUrl.VIDEO_URL;
    var response;
    try{
      response =  await http.get(videoListUri);
    }
    catch(e){
      print(loadAPIError + e.toString());
    }

    var jsonBody = convert.jsonDecode(response.body);
    Log().printJson(json: jsonBody);
    if(jsonBody['code']=='success'){
      List jsonList = jsonBody['list'];
      for(var jsonVideo in jsonList)
        {
          Video video = Video.fromJson(jsonVideo);
          videoList.add(video);
        }
    }
    return videoList;

  }
  // Search Topic
/*
  searchTopic({ required String searchText, required String token}){
    List<Topic> topicList = []; 
    var searchTopicUri = ApiUrl.SEARCH_TOPIC;
    var response ; 
    try{
      response = http.post(
          searchTopicUri,
          body: {"data": searchText},
          headers: {'Authorization': "Bearer " + token}
      );
    }
    catch(e)
    {
      print(e.toString());
    }
    


  }
  
 */

  // Lấy thông tin người dùng


  // Đăng ký



  // Đăng nhập



}