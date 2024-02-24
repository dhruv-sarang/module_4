import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Gallery> gallery = [
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
    Gallery(image: 'assets/images/noodle.png'),
    Gallery(image: 'assets/images/burger.png'),
    Gallery(image: 'assets/images/cheese.png'),
    Gallery(image: 'assets/images/olive.png'),
    Gallery(image: 'assets/images/pasta.png'),
    Gallery(image: 'assets/images/pizza.png'),
    Gallery(image: 'assets/images/tomato.png'),
    Gallery(image: 'assets/images/facebook.jpeg'),
    Gallery(image: 'assets/images/google.png'),
  ];

  Gallery? selectedImage;

  void _showImageDialog(BuildContext context, Gallery image) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(image.image),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black26,
      child: Center(
        child: GridView.builder(
          itemCount: gallery.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() {
                selectedImage = gallery[index];
                _showImageDialog(context, selectedImage!);
              });
            },
            child: Image.asset(gallery[index].image),
          ),
        ),
      ),
    );
  }
}

class Gallery {
  String image;

  Gallery({required this.image});
}
