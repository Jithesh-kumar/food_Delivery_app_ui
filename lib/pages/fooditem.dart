import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:food_delivery/pages/food_details.dart';

Widget buildFoodItem({
  required BuildContext context,
  required String imageUrl,
  required String name,
  required String price,
  required String cook,
  required String button,
  required String deliver,
  required String name2,
}) {
  final isAndroid = Platform.isAndroid;
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FoodDetailPage(
                imageUrl: imageUrl,
                name: name,
                price: price,
                button: button,
                deliver: deliver,
                cook: cook,
                name2: name2,
              )));
    },
    child: Container(
      width: isAndroid ? 173 : 190,
      height: isAndroid ? 240 : 240,
      decoration: BoxDecoration(
          //border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey.shade100),
      child: Padding(
        padding: EdgeInsets.all(isAndroid ? 8.0 : 8.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(isAndroid ? 8.0 : 8.0),
              child: ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  //color: Colors.white,
                  child: Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.only(right: isAndroid ? 35 : 45),
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: isAndroid ? 11 : 11),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Text(
                  cook,
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  deliver,
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    price,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        Size(isAndroid ? 20 : 30, isAndroid ? 15 : 25)),
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      button,
                      style: TextStyle(fontSize: isAndroid ? 8 : 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
