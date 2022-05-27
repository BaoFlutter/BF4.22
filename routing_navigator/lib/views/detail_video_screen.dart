import 'package:api_lession/models/video.dart';
import 'package:api_lession/views/video_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
class VideoDetailScreen extends StatefulWidget {
  final Video video;
  const VideoDetailScreen({Key? key, required this.video}) : super(key: key);

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.video.title!),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () { Get.offAll(VideoListScreen()) ;
              /*
              var route = MaterialPageRoute(builder: (context)=> VideoListScreen());
              Navigator.pushAndRemoveUntil(context, route, (route)=> false);

               */


              // Get.back();
              //Navigator.of(context).pop();
              //Navigator.pop(context);
            }
          ),
        ),
        body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
            child: Container(
              child: Column(
                children: [
                  Image.network(widget.video.url_photo!),
                  Html(data: widget.video.description!),
                ],
              ),
            )
        )

    );
  }
}
