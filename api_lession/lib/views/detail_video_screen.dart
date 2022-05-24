import 'package:api_lession/models/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
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
