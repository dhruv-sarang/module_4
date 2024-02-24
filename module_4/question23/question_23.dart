import 'package:flutter/material.dart';
import 'screens/gallery_screen.dart';
import 'screens/video_screen.dart';
import 'screens/audio_screen.dart';

class Question23 extends StatefulWidget {
  const Question23({super.key});

  @override
  State<Question23> createState() => _Question23State();
}

class _Question23State extends State<Question23> {
  int selectedIndex = 0;

  List<Widget> widgetList = [
    Center(
      child: GalleryScreen(),
    ),
    Center(
      child: AudioScreen(),
    ),
    Center(
      child: VideoScreen(),
    ),
  ];

  List<String> titleList = [
    'Gallery Screen',
    'Audio Screen',
    'Video Screen'
  ];

  @override
  itemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(titleList[selectedIndex]),
      ),
      body: widgetList[selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person, size: 36),
                      radius: 30,
                      backgroundColor: Colors.deepOrangeAccent,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dhruv',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                itemClicked(0, context);
              },
              title: Text('Gallery'),
              leading: Icon(Icons.image),
            ),
            ListTile(
              onTap: () {
                itemClicked(1, context);
              },
              title: Text('Audio'),
              leading: Icon(Icons.audiotrack),
            ),
            ListTile(
              onTap: () {
                itemClicked(2, context);
              },
              title: Text('Video'),
              leading: Icon(Icons.video_camera_back),
            )
          ],
        ),
      ),
    );
  }
}
