import 'package:day8_provider_try/ProgressValueProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// late VideoProgressState videoProgressState;

class VideoProgress extends StatefulWidget {
  // ignore: no_logic_in_create_state
  VideoProgressState createState() {
    return VideoProgressState();
  }
}

class VideoProgressState extends State<VideoProgress> {
  Widget build(BuildContext context) {
    var progress = Provider.of<ProgressValue>(context).getprogress * 100;
    return Center(
        child: Text("Video Progress ${progress.toStringAsFixed(2)} %"));
  }
}
