import 'package:assignment/module_4/Model/question.dart';
import 'package:assignment/module_4/question13/question_13.dart';
import 'package:assignment/module_4/question14/question_14.dart';
import 'package:assignment/module_4/question15/question_15.dart';
import 'package:assignment/module_4/question16/question_16.dart';
import 'package:assignment/module_4/question17/question_17.dart';
import 'package:assignment/module_4/question18/question_18.dart';
import 'package:assignment/module_4/question19/question_19.dart';
import 'package:assignment/module_4/question20/question_20.dart';
import 'package:assignment/module_4/question21/question_21.dart';
import 'package:assignment/module_4/question22/question_22.dart';
import 'package:assignment/module_4/question23/question_23.dart';
import 'package:assignment/module_4/question25/question_25.dart';
import 'package:assignment/module_4/question26/question_26.dart';
import 'package:assignment/module_4/question28/question_28.dart';
import 'package:assignment/module_4/question29/question_29.dart';
import 'package:assignment/module_4/question30/question_30.dart';
// import 'package:assignment/module_4/question_013/question_013.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Module - 4',
        debugShowCheckedModeBanner: false,
        home: HomeScreenModule4());
  }
}

class HomeScreenModule4 extends StatelessWidget {
  List<Question> questionList = [
    Question(questionNo: 13, question: 'Create custom toolbar as per given below design Create toolbar with spinner and search functionality'),
    Question(questionNo: 14, question: 'Write a code to display simple alert dialog with title, description and icon when button is clicked'),
    Question(questionNo: 15, question: 'Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user\'s choice'),
    Question(questionNo: 16, question: 'Write a code to display alert dialog with list of cities and Single choice selection display selected city in TextView'),
    Question(questionNo: 17, question: 'open alert dialog when user want to exit from the application.'),
    Question(questionNo: 18, question: 'Write a code to select Date on button\'s click event.'),
    Question(questionNo: 19, question: 'Write a code to display profile and logout option in options menu.'),
    Question(questionNo: 20, question: 'Write a code to display edit, view, delete options with context menu in listview and also perform respective operation on user\'s choice.'),
    Question(questionNo: 21, question: 'Create an application like gmail and display Screens according to user selection and design each page with dummy data.'),
    Question(questionNo: 22, question: 'Create an application with bottom navigation with 3 tabs Gallery, audio and video and design each page with dummy data.'),
    Question(questionNo: 23, question: 'Create an application with Navigation Drawer with 3 tabs Gallery, audio and video and design each page with dummy data.'),
   // Question(questionNo: 24, question: 'Create a Phone call App when user first time open the app it will automatically generate one dialog which has two option allow, deny if click on allow permission is grant in settings.'),
    Question(questionNo: 25, question: 'Write a code to display Splash Screen using Activity.'),
    Question(questionNo: 26, question: 'Write a code to redirect user from one activity to another when button click.'),
   // Question(questionNo: 27, question: 'Create an Android Application which Manage Activity Lifecycle Stages and Showing Toast with Performing Different Stages.'),
    Question(questionNo: 28, question: 'Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity.'),
    Question(questionNo: 29, question: 'Call via urllauncher, Send Sms via urllauncher.'),
    Question(questionNo: 30, question: 'Write a program to add name from the text view and insert into the listview. If you click on the listview then name should be show in the dialog box. When user press for 2 seconds on particular List item then open Context Menu (Delete Item, Edit Item, Exit). If user click on Delete Item then Open one Alert Dialog with message (“Are you sure want to delete Item?”) and yes, no button if user press yes button then remove item from list. (Click a DELETE button, it gives a confirm box) If user click on Edit item then selected item display on EditText and again user click on button then this (updated item) should be replace with old item'),
  ];

  HomeScreenModule4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.purple.shade700,
              Colors.purple.shade600,
              Colors.purple.shade400,
              Colors.purple.shade200,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        centerTitle: true,
        // backgroundColor: Colors.purpleAccent.shade400,
        title: Text(
          'Module - 4',
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 4),
        ),
      ),
      body: Container(
        color: Colors.purpleAccent.shade200,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: ListView.builder(
            itemCount: questionList.length,
            itemBuilder: (context, index) {
              Question question = questionList[index];
              return SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Card(
                  shadowColor: Colors.black,
                  surfaceTintColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  color: Colors.purple.shade100,
                  child: ListTile(
                    onTap: () {
                      _itemClicked(question, context);
                    },
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.purpleAccent,
                      child: Text(
                        '${question.questionNo}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    title: Text(question.question),
                    trailing: Icon(Icons.navigate_next),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _itemClicked(Question question, BuildContext context) {
    switch (question.questionNo) {
      case 13:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question13(),
          ),
        );
        break;
      case 14:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question14(),
          ),
        );
        break;
      case 15:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question15(),
          ),
        );
        break;
      case 16:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question16(),
          ),
        );
        break;
      case 17:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question17(),
          ),
        );
        break;
      case 18:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question18(),
          ),
        );
        break;
      case 19:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question19(),
          ),
        );
        break;
      case 20:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question20(),
          ),
        );
        break;
      case 21:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question21(),
          ),
        );
        break;
      case 22:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question22(),
          ),
        );
        break;
      case 23:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question23(),
          ),
        );
        break;
      case 24:
       /*Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question24(),
          ),
        );*/
        break;
      case 25:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question25(),
          ),
        );
        break;
      case 26:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question26(),
          ),
        );
        break;
      case 27:
      /* Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question11(),
          ),
        );*/
        break;
      case 28:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question28(),
          ),
        );
        break;
      case 29:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question29(),
          ),
        );
        break;
      case 30:
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Question30(),
          ),
        );
        break;
    }
  }
}



