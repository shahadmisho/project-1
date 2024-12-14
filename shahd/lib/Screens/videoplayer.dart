import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerCustum extends StatefulWidget {
  final VideoPlayerController controller;

  const VideoPlayerCustum({Key? key, required this.controller}) : super(key: key);

  @override
  _VideoPlayerCustumState createState() => _VideoPlayerCustumState();
}

class _VideoPlayerCustumState extends State<VideoPlayerCustum> {
  late Future<void> _video;

  @override
  void initState() {
    super.initState();
    _video = widget.controller.initialize();
  }

  @override
  void dispose() {
    widget.controller.dispose(); // Dispose the controller when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("See Your Target"),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: _video,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: widget.controller.value.aspectRatio,
              child: VideoPlayer(widget.controller),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (widget.controller.value.isPlaying) {
              widget.controller.pause();
            } else {
              widget.controller.play();
            }
          });
        },
        child: Icon(widget.controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}