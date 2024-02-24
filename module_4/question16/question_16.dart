import 'package:flutter/material.dart';

class Question16 extends StatefulWidget {
  const Question16({Key? key}) : super(key: key);

  @override
  State<Question16> createState() => _Question16State();
}

class _Question16State extends State<Question16> {
  List<String> cityName = [
    'Surat',
    'Navsari',
    'Vadodara',
    'Ahmedabad',
    'Bharuch',
    'Kutch',
    'Valsad',
    'Rajkot'
  ];
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 16'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('${cityName[selectedOption]}',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text('Select your City', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showAlertDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Alert'),
        content: StatefulBuilder(
          builder: (context, setState) {
            return Container(
              width: 400,
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: cityName.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            title: Text('${cityName[index]}',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black)),
                            leading: Radio(
                              value: index,
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!;
                                });
                              },
                            ));
                      },
                    )
                  ],
                ),
              ),
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                selectedOption;
              });
              Navigator.pop(context);
            },
            child: Text('Select'),
          ),

        ],
      ),
    );
  }
}
