import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final int output;

  OutputScreen({required this.output});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output Screen'),
      ),
      body: Center(
        child: Text(
          'Output : $output',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}