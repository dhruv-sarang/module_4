import 'package:flutter/material.dart';

class Question19 extends StatefulWidget {
  const Question19({super.key});

  @override
  State<Question19> createState() => _Question19State();
}

class _Question19State extends State<Question19> {
  Future<void> ProfileDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 70,
                    child: Text(
                      'D',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 60),
                    ),
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                  Positioned(
                    left: 90,
                    top: 90,
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.greenAccent.shade400,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 32,
                          )),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Dhruv',
                  style: TextStyle(fontSize: 24),
                ),
                subtitle: Text(
                  'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('About'),
                subtitle: Text(
                  'Status...',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                ),
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text('Phone'),
                subtitle: Text(
                  '+91 8758633567',
                  style: TextStyle(color: Colors.grey),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert'),
        content: Text('Are you sure you want to Logout'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('No'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
              Navigator.pop(context, false);
            },
            child: Text('Yes'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 19'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String result) {},
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                onTap: () {
                  ProfileDialog(context);
                },
                child: Text('Profile'),
              ),
              PopupMenuItem<String>(
                onTap: () {
                  showAlertDialog(context);
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome'),
      ),
    );
  }
}
