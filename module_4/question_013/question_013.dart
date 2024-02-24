import 'package:assignment/module_4/model/allData.dart';
import 'package:assignment/module_4/model/food_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Question013 extends StatefulWidget {
  const Question013({super.key});

  @override
  State<Question013> createState() => _Question013State();
}

class _Question013State extends State<Question013> {


  /*List<SubCategory>chineseSsubCategoryList = [
    SubCategory(subName: 'All', cardItemList: []),
    SubCategory(subName: 'Soups',cardItemList: []),
    SubCategory(subName: 'Manchrian Dry',cardItemList: []),
    SubCategory(subName: 'Noodle',cardItemList: []),
    SubCategory(subName: 'Rice',cardItemList: []),
  ];*/



  List<CardItem> soupCard = [
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Soup1',
        price: '\$5',
        ratting: 4),
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Soup2',
        price: '\$7',
        ratting: 4),
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Soup3',
        price: '\$9',
        ratting: 4),
  ];

  List<CardItem> manchuCard = [
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Manchurian1',
        price: '\$5',
        ratting: 4),
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Manchurian2',
        price: '\$7',
        ratting: 4),
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Manchurian3',
        price: '\$9',
        ratting: 4),
  ];

  List<CardItem> noodleCard = [
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Noodle1',
        price: '\$5',
        ratting: 4),
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Noodle2',
        price: '\$7',
        ratting: 4),
    CardItem(
        image: 'assets/images/noodle.png',
        name: 'Noodle3',
        price: '\$9',
        ratting: 4),
  ];

  List<SubCategory> cardCategory = [];
  List<MainCategory> subCategoryList = [];
  @override
  void initState(){
    cardCategory.add(SubCategory(subName: 'Soup', cardItemList: soupCard));
    cardCategory.add(SubCategory(subName: 'Manchurian', cardItemList: manchuCard));
    cardCategory.add(SubCategory(subName: 'Noodle', cardItemList: noodleCard));
    cardCategory.add(SubCategory(subName: 'Rice', cardItemList: noodleCard));
  }

  void initState2(){
    subCategoryList.add(MainCategory(categoryName: 'Chinese', subCategory: cardCategory));
    /*subCategoryList.add(MainCategory(categoryName: 'Fast Food', subCategory: subCategoryList));
    subCategoryList.add(MainCategory(categoryName: 'Punjabi', subCategory: subCategoryList));
    subCategoryList.add(MainCategory(categoryName: 'Dessert', subCategory: subCategoryList));*/
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
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        // width: ((allItemList[index].name.length).toInt()) * 12,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              // categoryIndex = 0;
                              // selectedIndex = index;
                              // category = categories[index];
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            // color: selectedIndex == index
                            //     ? Colors.amber
                            //     : Colors.white,
                            child: Center(
                              child: Text('  ',
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
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              // categoryIndex = index;
                            });
                          },
                          child: Center(
                            child: Text(
                                '',
                                style: TextStyle(
                                    /*color: categoryIndex == index
                                        ? Colors.black
                                        : Colors.grey,*/
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
                  // itemCount: cardImageList.length,
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
                            child: Image.asset(''),
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
