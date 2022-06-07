import 'package:rxdart/rxdart.dart';

import '../data_sources/repository.dart';
import '../models/video.dart';

class VideoListBloc {
  final _repository = Repository();
  // Tạo 1 subject
  final videoListSubject = PublishSubject<List<Video>>();
  // Sink data into Bloc
  pushDataIntoBloc() async {
    List<Video> videoList = await  _repository.fetchAllVideos();
    videoListSubject.sink.add(videoList);
  }
   // Return data stream
   Stream<List<Video>> get videoListStream => videoListSubject.stream;

  dispose(){
    videoListSubject.close();
  }







}