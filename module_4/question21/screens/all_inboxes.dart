import 'package:flutter/material.dart';

class AllinBox extends StatefulWidget {
  const AllinBox({super.key});

  @override
  State<AllinBox> createState() => _AllinBoxState();
}

class _AllinBoxState extends State<AllinBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('All inboxes')),
    );
  }
}
