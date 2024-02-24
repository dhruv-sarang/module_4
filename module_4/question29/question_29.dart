import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


class Question29 extends StatelessWidget {
  const Question29({super.key});

  Future<void> sendSms() async {
    String phoneNumber = '8758633567';
    String message = 'Hello, this is a test message!';

    String mes = 'sms:$phoneNumber?body=$message';
    bool result = await canLaunchUrlString(mes);

    try {
      if (result) {
        await launchUrlString(mes);
      } else {
        throw Exception('Could not launch');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> dial(String contact) async {
    String callNo = 'tel:$contact';

    try {
      if (await canLaunchUrl(Uri.parse(callNo))) {
        print(true);
        await launchUrl(Uri.parse(callNo));
      } else {
        throw Exception('Could not launch');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 29'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Text('Send SMS'),
                onPressed: () {
                  sendSms();
                },
              ),
              ElevatedButton(
                child: Text('Dial Number'),
                onPressed: () {
                  dial('8866634508');
                },
              ),
            ],
          ),),
    );
  }
}
