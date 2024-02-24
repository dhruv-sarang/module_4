import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';

class Question18 extends StatefulWidget {
  const Question18({Key? key}) : super(key: key);

  @override
  State<Question18> createState() => _Question18State();
}

class _Question18State extends State<Question18> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020, 1),
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  DateTime selectedTime = DateTime.now();

  Timer? _timer;

  void updateTime() {
    setState(() {
      selectedTime = DateTime.now();
    });
  }

  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => updateTime());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 18'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
                '${selectedDate.day} / ${selectedDate.month} / ${selectedDate.year}',
                style: TextStyle(fontSize: 30)),
            Text(
                '${selectedTime.hour.toString().toString().padLeft(2, '0')}:${selectedTime.minute.toString().padLeft(2, '0')}:${selectedTime.second.toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Select date'),
            ),
          ],
        ),
      ),
    );
  }
}
