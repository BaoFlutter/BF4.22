import 'package:api_lession/models/video.dart';
import 'package:api_lession/providers/video_list_controller.dart';
import 'package:api_lession/providers/video_list_obx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'detail_video_screen.dart';
class SecondVideoListScreen extends StatelessWidget {
  const SecondVideoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final VideoListController videoListController = Get.find();
    final VideoListObxController videoListObxController = Get.find();
    var  videoList = videoListObxController.videoListObs.value;
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh sách Video 2"),
        centerTitle: true,
      ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
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
            )
        )
    );
  }
}
