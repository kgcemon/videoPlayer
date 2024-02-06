import 'package:flutter/material.dart';

import '../main.dart';

thumCard() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 10),
    child: Column(children: [
      Image.network("https://mp4videos.fusionbd.com/All_Files/thumb/Aajo_Mone_Hoy-Siblu_FusionBD.Com.mp4.jpg",
          height: mq.height * 0.25, width: double.infinity, fit: BoxFit.fill),
      Container(
        padding:  EdgeInsets.symmetric(vertical: mq.height * 0.015, horizontal: 15),
        width: double.infinity,
        color: Colors.green.shade50,
        child: const Text(
            "Aajo Mone Hoy-Siblu | Bangla video Song video",
            style: TextStyle(fontWeight: FontWeight.bold)),
      )
    ]),
  );
}
