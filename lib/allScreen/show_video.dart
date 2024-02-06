import 'package:api/widget/thumCard.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class ShowVideo extends StatefulWidget {
  String url;

  ShowVideo({super.key, required this.url});

  @override
  State<ShowVideo> createState() => _ShowVideoState();
}

class _ShowVideoState extends State<ShowVideo> {
  late FlickManager flickManager;

  @override
  void initState() {
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: mq.height * 0.3,
            child: FlickVideoPlayer(flickManager: flickManager),
          ),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShowVideo(
                                url: widget.url =
                                    "https://mp4videos.fusionbd.com/All_Files/1080x720_Pixels-HD/Bangla_Music_Videos-HD/Adhar-Habib_And_Shakib_FusionBD.Com.mp4"),
                          )),
                      child: thumCard()),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 5))
        ],
      )),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
}
