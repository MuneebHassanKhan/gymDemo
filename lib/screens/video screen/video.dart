import 'package:flutter/material.dart';
import 'package:trainingprojectgetx/controller/json%20controller/homecontroller.dart';
import 'package:trainingprojectgetx/view/video%20view/videoview.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  void initState() {
    initVideoData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return VideoView();
  }
}
