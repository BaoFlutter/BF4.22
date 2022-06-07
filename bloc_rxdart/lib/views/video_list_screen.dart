import 'package:api_lession/data_sources/api_services.dart';
import 'package:api_lession/resources/strings.dart';
import 'package:api_lession/views/detail_video_screen.dart';
import 'package:flutter/material.dart';

import '../blocs/video_list_bloc.dart';
import '../models/video.dart';
class VideoListScreen extends StatefulWidget {
  const VideoListScreen({Key? key}) : super(key: key);

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
 final videoListBloc = VideoListBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoListBloc.pushDataIntoBloc();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(videoList),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: StreamBuilder<List<Video>>(
          stream: videoListBloc.videoListStream,
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


      ),
    );
  }

 @override
 void dispose() {
   // TODO: implement dispose
   super.dispose();
   videoListBloc.dispose();
 }







}
