import 'package:flutter/material.dart';

class PrimaryScreen extends StatefulWidget {
  const PrimaryScreen({super.key});

  @override
  State<PrimaryScreen> createState() => _PrimaryScreenState();
}

class _PrimaryScreenState extends State<PrimaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Email from user ${index + 1}',
              style: TextStyle(fontSize: 20),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              radius: 24,
              child: Text('${index + 1}'),
            ),
            subtitle: Column(
              children: [
                Text(
                  'Details of E-mail send by user, Main title of mail is shown here',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Details of E-mail send by user, Main title of mail is shown here',
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
