import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Category",
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 250,
            ),
            const Text(
              "See All",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              width: 75,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFE0B2), Color(0xFFFFE0B2)],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            'assets/images/hm2.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      child: Text(
                        'Burger',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 75,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFE0B2), Color(0xFFFFE0B2)],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            'assets/images/french.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      child: Text(
                        'Chips',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 75,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFE0B2), Color(0xFFFFE0B2)],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            'assets/images/pizza.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      child: Text(
                        'Pizza',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: 75,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                  colors: [Color(0xFFFFE0B2), Color(0xFFFFE0B2)],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            'assets/images/pizza.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 20,
                      child: Text(
                        'Pizza',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
