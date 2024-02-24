import 'package:assignment/module_4/question21/screens/all_inboxes.dart';
import 'package:assignment/module_4/question21/screens/primary_screen.dart';
import 'package:assignment/module_4/question21/screens/trash_screen.dart';
import 'package:flutter/material.dart';
import 'model/label_data.dart';

class Question21 extends StatefulWidget {
  const Question21({super.key});

  @override
  State<Question21> createState() => _Question21State();
}

class _Question21State extends State<Question21> {
  List<Label> labelList = [
    /*Label(
      labelName: 'All inboxes',
      labelsIcon: Icon(Icons.all_inbox),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Primary',
      labelsIcon: Icon(Icons.inbox),
      badge: '99+',
      badgeColor: Colors.transparent,
      ),
    Label(
      labelName: 'Promotion',
      labelsIcon: Icon(Icons.discount_outlined),
      badge: '90 new',
      badgeColor: Colors.greenAccent,
      ),
    Label(
      labelName: 'Social',
      labelsIcon: Icon(Icons.group_outlined),
      badge: '244 new',
      badgeColor: Colors.lightBlueAccent,
      ),
    Label(
      labelName: 'All labels',
      labelsIcon: null,
      badge: '',
      badgeColor: Colors.transparent,
      ),*/
    Label(
      labelName: 'Starred',
      labelsIcon: Icon(Icons.star_border_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Snoozed',
      labelsIcon: Icon(Icons.watch_later_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
        labelName: 'Important',
        labelsIcon: Icon(Icons.label_important_outline),
        badge: '27',
        badgeColor: Colors.transparent),
    Label(
        labelName: 'Sent',
        labelsIcon: Icon(
          Icons.send_outlined,
        ),
        badge: '',
        badgeColor: Colors.transparent),
    Label(
      labelName: 'Scheduled',
      labelsIcon: Icon(Icons.schedule_send_outlined),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Outbox',
      labelsIcon: Icon(Icons.outbox),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Draft',
      labelsIcon: Icon(Icons.insert_drive_file_outlined),
      badge: '7',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'All Mails',
      labelsIcon: Icon(Icons.mail_outline),
      badge: '99+',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Spam',
      labelsIcon: Icon(Icons.report_gmailerrorred),
      badge: '22',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Trash',
      labelsIcon: Icon(Icons.delete_outline),
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: '[Imap]/Trash',
      labelsIcon: Icon(Icons.label_outline),
      badge: '99+',
      badgeColor: Colors.transparent,
    ),
    /*Label(
      labelName: 'Google apps',
      labelsIcon: null,
      badge: '',
      badgeColor: Colors.transparent,
    ),
    Label(
      labelName: 'Setting',
      labelsIcon: Icon(Icons.settings),
      badge: '',
      badgeColor: Colors.transparent,
     ),
    Label(
      labelName: 'Help & feedback',
      labelsIcon: Icon(Icons.help_outline),
      badge: '',
      badgeColor: Colors.transparent,
      ),*/
  ];

  List<GoogleApp> googleAppList = [
    GoogleApp(
        googleAppName: 'Calender',
        googleAppIcon: Icon(Icons.calendar_today),
        googleAppBadge: '',
        googleAppColor: Colors.transparent),
    GoogleApp(
        googleAppName: 'Contacts',
        googleAppIcon: Icon(Icons.person_2_rounded),
        googleAppBadge: '',
        googleAppColor: Colors.transparent),
  ];

  List<Widget> widgetList = [
    AllinBox(),
    PrimaryScreen(),
    Center(
      child: Text('Promotion'),
    ),
    Center(
      child: Text('Social'),
    ),
    Center(
      child: Text('Starred'),
    ),
    Center(
      child: Text('Snoozed'),
    ),
    Center(
      child: Text('Importent'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Scheduled'),
    ),
    Center(
      child: Text('Outbox'),
    ),
    Center(
      child: Text('Draft'),
    ),
    Center(
      child: Text('All Mails'),
    ),
    Center(
      child: Text('Spam'),
    ),
    TrashScreen(),
    Center(
      child: Text('[Imap]/Trash]'),
    ),
    Center(
      child: Text('Calender'),
    ),
    Center(
      child: Text('Contact'),
    ),
    Center(
      child: Text('Setting'),
    ),
    Center(
      child: Text('Hepl & feedback'),
    ),
  ];

  int selectedIndex = 1, navigationBarIndex = 0;

  List<Data> dataList = [];

  void initState() {
    dataList.add(
        Data(title: '', icon: Icons.mail_outline, selectedIcon: Icons.mail));
    dataList.add(Data(
        title: '',
        icon: Icons.video_chat_outlined,
        selectedIcon: Icons.video_chat));
  }

  itemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      Navigator.pop(context);
    });
  }

  bottomitemClicked(int index, BuildContext context) {
    setState(() {
      selectedIndex = index;
      navigationBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                SizedBox(height: 5),
                Center(
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search in mail',
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade200, fontSize: 18),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            radius: 18,
                            child: Text('D',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                            backgroundColor: Colors.deepOrangeAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: widgetList[selectedIndex],
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: NavigationBar(
        height: 60,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.grey,
        selectedIndex: navigationBarIndex,
        indicatorColor: Colors.indigo.shade500,
        onDestinationSelected: (value) {
          bottomitemClicked(navigationBarIndex, context);
          setState(() {
            navigationBarIndex = value!;
          });
        },
        destinations: List.generate(
          dataList.length,
          (index) => NavigationDestination(
            icon: Icon(dataList[index].icon),
            label: dataList[index].title.split(' ').first,
            selectedIcon: Icon(dataList[index].selectedIcon),
          ),
        ),
      ),
      drawer: Drawer(
          backgroundColor: Colors.grey.shade300,
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Gmail',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(color: Colors.white),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(0, context);
                  },
                  title: Text('All inboxes'),
                  leading: Icon(
                    Icons.all_inbox,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 0,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.white54),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(1, context);
                  },
                  title: Text('Primary'),
                  leading: Icon(
                    Icons.inbox,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 1,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Badge(
                    label: Text(
                      '99+',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(2, context);
                  },
                  title: Text('Promotion'),
                  leading: Icon(
                    Icons.discount_outlined,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 2,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Badge(
                    label: Text(
                      '90 new',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.greenAccent,
                    largeSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(3, context);
                  },
                  title: Text('Social'),
                  leading: Icon(
                    Icons.group_outlined,
                    color: Colors.black,
                  ),
                  selected: selectedIndex == 3,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  trailing: Badge(
                    label: Text(
                      '240 new',
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.lightBlueAccent,
                    largeSize: 24,
                  ),
                ),
              ),
              ExpansionTile(
                title: Text('All labels'),
                children: List.generate(
                  labelList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ListTile(
                      onTap: () {
                        itemClicked(index + 4, context);
                      },
                      title: Text('${labelList[index].labelName}'),
                      leading: labelList[index].labelsIcon,
                      selected: selectedIndex == index + 4,
                      selectedTileColor: Colors.blue,
                      selectedColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      trailing: Badge(
                        label: Text(
                          '${labelList[index].badge}',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: labelList[index].badgeColor,
                        largeSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                title: Text('Google App'),
                children: List.generate(
                  googleAppList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ListTile(
                      onTap: () {
                        itemClicked(index + labelList.length + 4, context);
                      },
                      title: Text('${googleAppList[index].googleAppName}'),
                      selected: selectedIndex == index + labelList.length + 4,
                      selectedTileColor: Colors.blue,
                      selectedColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                      leading: googleAppList[index].googleAppIcon,
                      trailing: Badge(
                        label: Text(
                          '${googleAppList[index].googleAppBadge}',
                          style: TextStyle(color: Colors.black),
                        ),
                        backgroundColor: googleAppList[index].googleAppColor,
                        largeSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(
                        labelList.length + googleAppList.length + 4, context);
                  },
                  title: Text('Setting'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  selected: selectedIndex ==
                      labelList.length + googleAppList.length + 4,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ListTile(
                  onTap: () {
                    itemClicked(labelList.length + googleAppList.length + 4 + 1,
                        context);
                  },
                  title: Text('Help & feedback'),
                  leading: Icon(
                    Icons.all_inbox,
                    color: Colors.black,
                  ),
                  selected: selectedIndex ==
                      labelList.length + googleAppList.length + 4 + 1,
                  selectedTileColor: Colors.blue,
                  selectedColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
