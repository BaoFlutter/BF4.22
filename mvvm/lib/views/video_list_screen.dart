
import 'package:api_lession/resources/strings.dart';
import 'package:api_lession/view_models/video_list_provider.dart';
import 'package:api_lession/views/detail_video_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/video.dart';
class VideoListScreen extends StatefulWidget {
  const VideoListScreen({Key? key}) : super(key: key);

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  Future<List<Video>>? futureVideoList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   Provider.of<VideoListProvider>(context, listen: false).getVideoList();
  }

  @override
  Widget build(BuildContext context) {
    final videoList = Provider.of<VideoListProvider>(context).videoList;
    return Scaffold(
      appBar: AppBar(
        title: Text(VIDEO_LIST),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: videoList.length!= 0 ? GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: videoList.length,
            itemBuilder: (BuildContext context, int index) {
              Video video = videoList[index];
              return GestureDetector(
                onTap: (){
                  var route = MaterialPageRoute(builder: (context)=> VideoDetailScreen(video: video,));
                  Navigator.push(context, route);
                },
                child: Card(
                    color: Colors.amber,
                    child: Container(
                      child: Column(
                        children: [
                          Image.network(video.url_photo!),
                          Text(video.title!)
                        ],
                      ),
                    )
                ),
              );
            }
        ): Center( child: CircularProgressIndicator(),),
        /*
        child: FutureBuilder<List<Video>>(
          future: futureVideoList,
          builder: (context, snapshot){
            // Load lỗi
            if(snapshot.hasError) return Center(
              child: Text(loadAPIError),
            );
            // chưa load xong
            if(!snapshot.hasData) return Center(
              child: CircularProgressIndicator(),
            );
            // Đã load xong
            List<Video> videoList = snapshot.data!;
            // 3. Cập nhật dữ liệu lên Provider

            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: videoList.length,
                itemBuilder: (BuildContext context, int index) {
                  Video video = videoList[index];
                  return GestureDetector(
                    onTap: (){
                      var route = MaterialPageRoute(builder: (context)=> VideoDetailScreen(video: video,));
                       Navigator.push(context, route);
                    },
                    child: Card(
                        color: Colors.amber,
                        child: Container(
                          child: Column(
                            children: [
                              Image.network(video.url_photo!),
                              Text(video.title!)
                            ],
                          ),
                        )
                    ),
                  );
                }
            );

          },
        ),

         */


      ),
    );
  }


}
