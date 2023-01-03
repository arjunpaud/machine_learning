import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../utils/Strings.dart';

class PlayVideo extends StatefulWidget {
  const PlayVideo(this.youtUrl);
  final String? youtUrl;

  @override
  State<PlayVideo> createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayerController.convertUrlToId(widget.youtUrl!)!,
        params: const YoutubePlayerParams(
          color: "Transparent",
          loop: true,
          enableJavaScript: true,
          desktopMode: true,
          autoPlay: true,
          strictRelatedVideos: true,
          showFullscreenButton: true,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kundalini Yoga")),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 0),
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: YoutubePlayerControllerProvider(
                  controller: _controller,
                  child: YoutubePlayerIFrame(
                    controller: _controller,
                  ))),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(133, 194, 189, 189)),
            padding: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Kundalini Yoga  on the path of wellbeing.",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SingleChildScrollView(
            child: Container(
              height:230,
              child: Text(
                Strings.paragraph2,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
