import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_delivery/pages/fooditem.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Popular Foods",
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            buildFoodItem(
                context: context,
                imageUrl: 'assets/images/food5.png',
                name: 'Lorem ipsum lipsum Lorem',
                name2: 'Nuggets Combo',
                price: '\$10.99',
                cook: 'Cook:45Mins',
                button: 'Order Now',
                deliver: 'Deliver : 20Mins'),
            SizedBox(
              width: 10,
            ),
            buildFoodItem(
                context: context,
                imageUrl: 'assets/images/f31.png',
                name: 'Lorem ipsum lipsum Lorem',
                name2: 'Nuggets Combo',
                price: '\$8 .99',
                cook: 'Cook:45Mins',
                button: 'Order Now',
                deliver: 'Deliver : 20Mins'),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            buildFoodItem(
                context: context,
                imageUrl: 'assets/images/foos3.jpg',
                name: 'Lorem ipsum lipsum Lorem',
                name2: 'Nuggets Combo',
                price: '\$12.99',
                cook: 'Cook: 45Mins',
                button: 'Order Now',
                deliver: 'Deliver : 20Mins'),
            SizedBox(width: 10),
            buildFoodItem(
                context: context,
                imageUrl: 'assets/images/food4.jpg',
                name: 'Lorem ipsum lipsum Lorem',
                name2: 'Nuggets Combo',
                price: '\$9 .99',
                cook: 'Cook:45Mins',
                button: 'Order Now',
                deliver: 'Deliver : 20Mins'),
          ],
        ),
      ],
    );
  }
}
