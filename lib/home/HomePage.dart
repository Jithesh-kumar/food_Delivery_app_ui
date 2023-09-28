//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_navigation.dart';
import 'package:food_delivery/pages/category.dart';
import 'package:food_delivery/pages/popular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 80),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Let's Find The ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Best Food',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.notifications_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Around You',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: ' Search Food',
                            suffixIcon: Icon(
                              Icons.search_rounded,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const CategoryWidget(),
              const SizedBox(
                height: 30,
              ),
              const PopularFood(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
