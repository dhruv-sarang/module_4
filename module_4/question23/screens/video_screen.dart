import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black26,
      child: Center(
        child: Text(
          'Video',
          style: TextStyle(fontSize: 26),
        ),
      ),
    );
  }
}
