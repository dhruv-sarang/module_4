import 'package:flutter/material.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

class _TrashScreenState extends State<TrashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/trash.png'),
          ),
          SizedBox(height: 20,),
          Text('Nothing in Trash', style: TextStyle(fontSize: 28)),
        ],
      )),
    );
  }
}
