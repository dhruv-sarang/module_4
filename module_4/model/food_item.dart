class MainCategory {
  String categoryName;
  List<SubCategory> subCategory = [];

  MainCategory({required this.categoryName, required this.subCategory});
}

class SubCategory {
  String subName;
  List<CardItem> cardItemList = [];

  SubCategory({required this.subName, required this.cardItemList});
}

class CardItem {
  String image, name, price;
  double ratting;

  CardItem(
      {required this.image,
      required this.name,
      required this.price,
      required this.ratting});
}
