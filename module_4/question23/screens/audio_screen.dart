import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AudioScreen extends StatefulWidget {
  const AudioScreen({super.key});

  @override
  State<AudioScreen> createState() => _AudioScreenState();
}

class _AudioScreenState extends State<AudioScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black26,
      child: Center(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
          return ListTile(title: Text('Audio ${index+1}'),
          leading: Icon(Icons.audiotrack),);
        },)
      ),
    );
  }
}
