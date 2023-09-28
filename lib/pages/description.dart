import 'package:flutter/material.dart';
import 'package:food_delivery/pages/imgrediants.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 25),
            child: Text(
              'Description',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
                'adipiscing elit. Morbi commodo ex gravida ex auctor,'
                'convallis dignissim leo . Nullam convallis,'
                'nisi eget eleifend efficitur, arcu magna tincidunt neque,'
                'tempus rutrum ante lectus eu ante. Nullam scelerisque,'
                'nulla in commodo aliquam, massa nibh semper sapien'
                'a tempus libero mi in tortor.',
                maxLines: isExpanded ? null : 3,
                style: TextStyle(fontSize: 16),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(
                  isExpanded ? 'See Less' : 'See More',
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
        const IngrediantPage()
      ],
    );
  }
}
