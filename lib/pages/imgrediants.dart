//import 'dart:js_util';

import 'package:flutter/material.dart';

class IngrediantPage extends StatefulWidget {
  const IngrediantPage({super.key});

  @override
  State<IngrediantPage> createState() => _IngrediantPageState();
}

class _IngrediantPageState extends State<IngrediantPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 18),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Ingrediants',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: ClipOval(
                      child: Container(
                        //color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            'assets/images/onion.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: ClipOval(
                      child: Container(
                        //color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            'assets/images/tomato.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: ClipOval(
                    child: Container(
                      //color: Colors.white,
                      child: Center(
                        child: Image.asset(
                          'assets/images/carrot.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: ClipOval(
                      child: Container(
                        //color: Colors.white,
                        child: Center(
                          child: Image.asset(
                            'assets/images/cabbage.png',
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: ClipOval(
                    child: Container(
                      //color: Colors.white,
                      child: Center(
                        child: Image.asset(
                          'assets/images/lemon.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 70,
        ),
        Container(
          width: 500,
          height: 130,
          decoration: BoxDecoration(color: Colors.grey.shade100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text.rich(
                  TextSpan(
                    text: '2 items:\n',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                    children: [
                      TextSpan(
                        text: "\$99.00",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                    left: 10,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.amber),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(30.0)))),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
