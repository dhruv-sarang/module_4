import 'package:flutter/material.dart';

class Category {
  List<Item> itemList = [];
  List<SubItem> subNameList = [];
  Category({required this.itemList, required this.subNameList});
}

class Item {
  int id;
  String name;
  Item({required this.id,required this.name});
}

class SubItem{
  String subName;
  SubItem({required this.subName});
}


class CardItemImage {
  String image;
  CardItemImage({required this.image});
}
class CartItemname{
  List<String>  cardItemImage = [];

  CartItemname({required this.cardItemImage});
}

