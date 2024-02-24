import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'model/item.dart';

class Question30 extends StatefulWidget {
  const Question30({super.key});

  @override
  State<Question30> createState() => _Question30State();
}

class _Question30State extends State<Question30> {
  List<Item> itemList = [
    Item(id: '1', itemName: 'Item 1'),
    Item(id: '2', itemName: 'Item 2'),
    Item(id: '3', itemName: 'Item 3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 30'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: itemList.length,
          itemBuilder: (context, index) {
            Item item = itemList[index];
            return Card(
              child: ListTile(
                onLongPress: () {
                  showContextMenu(context, item);
                },
                onTap: () {},
                // title: Text('${user.name}'),
                title: Text(
                    '${item.itemName!.replaceFirst(item.itemName![0], item.itemName![0].toUpperCase())}'),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addUserInListile(context: context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addUserInListile({required BuildContext context, Item? item}) {
    final _nameController =
    TextEditingController(text: item != null ? item.itemName : '');

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(
              top: 20,
              right: 20,
              left: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom == 0
                  ? 20
                  : MediaQuery.of(context).viewInsets.bottom + 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter Item Name',
                ),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    String _name = _nameController.text.trim();

                    var mUser = Item(
                      itemName: _name,
                      id: item != null ? item.id : getUniqueId(),
                    );
                    // print(' ID : ${user.id}');

                    if (item != null) {
                      updateItem(mUser, context);
                    } else {
                      addItem(mUser, context);
                    }
                  },
                  child: Text(
                      item != null ? 'Update Item List' : 'Create Item List'),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  getUniqueId() {
    var uuid = Uuid();
    return uuid.v4();
  }

  void addItem(Item item, BuildContext context) {
    setState(() {
      itemList.add(item);
      Navigator.pop(context);
    });
  }

  void updateItem(Item mItem, BuildContext context) {
    var index = itemList.indexWhere((element) => element.id == mItem.id);
    if (index != -1) {
      setState(() {
        itemList[index] = mItem;
        Navigator.pop(context);
      });
    }
  }

  void showContextMenu(BuildContext context, Item item) {
    final RelativeRect position = RelativeRect.fromLTRB(150, 400, 150, 400);

    showMenu(
      context: context,
      position: position,
      items: [
        PopupMenuItem(
          value: 'edit',
          child: Text('Edit Item'),
        ),
        PopupMenuItem(
          value: 'delete',
          child: Text('Delete Item'),
        ),
        PopupMenuItem(
          value: 'exit',
          child: Text('Exit'),
        ),
      ],
    ).then((value) {
      if (value == 'edit') {
        addUserInListile(context: context, item: item);
      } else if (value == 'delete') {
        showAlertDialog(context, item);
      } else if (value == 'exit'){
        Navigator.pop(context);
      }
    });
  }


  Future<bool> showAlertDialog(BuildContext context, Item item) async {
    return await showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Alert'),
        content: Text('Are you sure you want to Delete'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, false);
              setState(() {
                itemList.removeWhere((element) => element.id == item.id);
              });
            },
            child: Text('Delete'),
          )
        ],
      ),
    );
  }
}



