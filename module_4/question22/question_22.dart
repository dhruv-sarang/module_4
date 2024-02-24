import 'package:flutter/material.dart';
import 'model/data.dart';
import 'screens/gallery_screen.dart';
import 'screens/video_screen.dart';
import 'screens/audio_screen.dart';


class Question22 extends StatefulWidget {
  const Question22({super.key});

  @override
  State<Question22> createState() => _Question22State();
}

class _Question22State extends State<Question22> {
  int selectedIndex = 0;
  List<Data> dataList = [];

  @override
  void initState() {
    dataList.add(Data(
        title: 'Gallery Screen',
        screen: GalleryScreen(),
        icon: Icons.image_outlined,
        selectedIcon: Icons.image));
    dataList.add(Data(
        title: 'Audio Screen',
        screen: AudioScreen(),
        icon: Icons.audiotrack_outlined,
        selectedIcon: Icons.audiotrack));
    dataList.add(Data(
        title: 'Video Screen',
        screen: VideoScreen(),
        icon: Icons.video_camera_back_outlined,
        selectedIcon: Icons.video_camera_back));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(dataList[selectedIndex].title),
      ),
      body: dataList[selectedIndex].screen,
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        backgroundColor: Colors.grey,
        selectedIndex: selectedIndex,
        indicatorColor: Colors.black26,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value!;
          });
        },
        destinations: List.generate(
          dataList.length,
          (index) => NavigationDestination(
            icon: Icon(dataList[index].icon),
            label: dataList[index].title.split(' ').first,
            selectedIcon: Icon(dataList[index].selectedIcon),
          ),
        ),
      ),
    );
  }
}
