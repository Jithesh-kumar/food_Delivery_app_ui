import 'package:flutter/material.dart';
import 'package:food_delivery/home/HomePage.dart';
import 'package:slider_button/slider_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/h6.png'),
          ),
          const SizedBox(
            height: 80,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'We Deliver ',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Delicious',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Food For You ',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'This App Is Different From Other Online',
            style: TextStyle(
              color: Colors.black12.withOpacity(0.5),
            ),
          ),
          Text(
            'Food Delivery Apps',
            style: TextStyle(
              color: Colors.black12.withOpacity(0.5),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          SliderButton(
            backgroundColor: Colors.grey.withOpacity(0.7),
            buttonColor: Colors.amber,
            buttonSize: 60,
            action: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            label: const Text(
              'Get Start Now',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            icon: const Icon(
              Icons.arrow_forward,
            ),
            highlightedColor: const Color(0xFFF57F17),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
