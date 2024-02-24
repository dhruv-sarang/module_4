import 'package:assignment/module_4/model/allData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Question13 extends StatefulWidget {
  const Question13({super.key});

  @override
  State<Question13> createState() => _Question13State();
}

class _Question13State extends State<Question13> {
  int selectedIndex = 0, categoryIndex = 0;
  Category? category;

  List<Item> allItemList = [
    Item(id: 1, name: 'Chinese'),
    Item(id: 2, name: 'Fast Food'),
    Item(id: 3, name: 'Punjabi'),
    Item(id: 4, name: 'Desert'),
  ];

  List<SubItem> chineseList = [
    // SubItem(subName: 'All'),
    SubItem(subName: 'Soups'),
    SubItem(subName: 'Manchurian Dry'),
    SubItem(subName: 'Noodle'),
    SubItem(subName: 'Rice'),
  ];

  List<SubItem> fastFoodList = [
    // SubItem(subName: 'All'),
    SubItem(subName: 'French Fries'),
    SubItem(subName: 'Pizza'),
    SubItem(subName: 'Pasta'),
    SubItem(subName: 'Burger'),
    SubItem(subName: 'Tacos'),
  ];

  List<SubItem> punjabiList = [
    // SubItem(subName: 'All'),
    SubItem(subName: 'Starter'),
    SubItem(subName: 'Subji Gravy'),
    SubItem(subName: 'Naan & Roti'),
    SubItem(subName: 'Dal-Rice'),
    SubItem(subName: 'Lassi'),
  ];

  List<SubItem> dessertiList = [
    // SubItem(subName: 'All'),
    SubItem(subName: 'Cake'),
    SubItem(subName: 'Indian dessert'),
    SubItem(subName: 'Milk Shake'),
    SubItem(subName: 'Ice Cream'),
  ];

  List<CardItemImage> cardImageList = [
    CardItemImage(image: 'assets/images/noodle.png'),
    CardItemImage(image: 'assets/images/pizza.png'),
    CardItemImage(image: 'assets/images/pasta.png'),
    CardItemImage(image: 'assets/images/burger.png'),
    CardItemImage(image: 'assets/images/noodle.png'),
    CardItemImage(image: 'assets/images/pizza.png'),
  ];



  List<Category> categories = [];

  @override
  void initState() {
    categories.add(Category(itemList: allItemList, subNameList: chineseList));
    categories.add(Category(itemList: allItemList, subNameList: fastFoodList));
    categories.add(Category(itemList: allItemList, subNameList: punjabiList));
    categories.add(Category(itemList: allItemList, subNameList: dessertiList));
    category = categories[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Menu',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(Icons.search, size: 25),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: Icon(Icons.filter_alt_outlined, size: 25),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: allItemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: ((allItemList[index].name.length).toInt()) * 12,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              categoryIndex = 0;
                              selectedIndex = index;
                              category = categories[index];
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            color: selectedIndex == index
                                ? Colors.amber
                                : Colors.white,
                            child: Center(
                              child: Text('${allItemList[index].name}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: category?.subNameList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              categoryIndex = index;
                            });
                          },
                          child: Center(
                            child: Text(
                                '${category?.subNameList[index].subName}',
                                style: TextStyle(
                                    color: categoryIndex == index
                                        ? Colors.black
                                        : Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  itemCount: cardImageList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 280,
                  ),
                  itemBuilder: (context, index) => Container(
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            child: Image.asset(cardImageList[index].image),
                          ),
                          Text('Noodle Type'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RatingBar.builder(
                                initialRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 17,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                              Text('(0.0)'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('\$13.50'),
                              Container(
                                height: 47,
                                width: 47,
                                child: Card(
                                  color: Colors.amber,
                                  child: IconButton(
                                      onPressed: () {}, icon: Icon(Icons.add)),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    /*Text(itemList[index].text),*/
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
        ],
        selectedItemColor: Colors.amber,
        onTap: (value) {},
      ),
    );
  }
}
