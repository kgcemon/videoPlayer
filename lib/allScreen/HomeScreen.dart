import 'package:api/allScreen/show_video.dart';
import 'package:api/widget/thumCard.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  load(){
    return;
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("Video Player"),
          backgroundColor: Colors.green.shade50),
      body: RefreshIndicator(
        onRefresh: () => load(),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.fast),
          itemCount: 10,
          itemBuilder: (context, index) => InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowVideo(
                        url:
                            "https://mp4videos.fusionbd.com/All_Files/1080x720_Pixels-HD/Bangla_Music_Videos-HD/Abol_Tabol-Cheleti_Abol_Tabol_Meyeti_Pagol_Pagol-Movie_Song_FusionBD.Com.mp4"),
                  )),
              child: thumCard()),
        ),
      ),
    );
  }
}
