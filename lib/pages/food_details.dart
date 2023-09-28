import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/pages/description.dart';

class FoodDetailPage extends StatefulWidget {
  final String imageUrl;
  final String name;
  final String price;
  final String cook;
  final String button;
  final String deliver;
  final String name2;

  FoodDetailPage({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.cook,
    required this.button,
    required this.deliver,
    required this.name2,
  });

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  bool isLiked = false;
  final isAndroid = Platform.isAndroid;
  double _rating = 3.0;
  int count = 0;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
    print('Is liked:$isLiked');
  }

  void increment() {
    setState(() {
      if (count < 9) {
        count++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: isAndroid ? 40 : 60,
            left: isAndroid ? 10 : 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          GestureDetector(
            onTap: toggleLike,
            child: Stack(
              children: [
                Positioned(
                  top: isAndroid ? 40 : 60,
                  right: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child: Icon(
                      isLiked ? Icons.favorite : Icons.favorite_border,
                      color: isLiked
                          ? Color.fromARGB(234, 255, 214, 7)
                          : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: isAndroid ? 60 : 80,
                ),
                ClipOval(
                  child: Container(
                    height: isAndroid ? 300 : 300,
                    child: Image.asset(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          widget.name2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Container(
                        width: 75,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey.shade200),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: decrement,
                              child: Icon(
                                Icons.remove,
                                color: Colors.amber,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              '$count',
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            GestureDetector(
                              onTap: increment,
                              child: Icon(
                                Icons.add,
                                color: Colors.amber,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            _rating = rating;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '$_rating : Ratings',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Description()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
