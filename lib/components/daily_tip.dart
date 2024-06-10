import 'package:flutter/material.dart';

class DailyTip extends StatelessWidget {

  final Map<String, String> element = {
    'title': '3 Main workout tips',
    'subtitle': 'The American Council on Exercises (ACE) recently surveyed 3,000 ACE-certificated personal trainers about the best!',
    'image': 'assets/images/image011.jpg',
  };

   DailyTip({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width * 0.80;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: 200.0,
          margin: const EdgeInsets.only(
            right: 15.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(element['image']!),
              fit: BoxFit.fill,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
        ),
        Text(
          element['title']!,
          style: const TextStyle(fontSize: 14.0,color: Colors.white),
        ),
        Container(
          width: width,
          margin: const EdgeInsets.only(top: 10.0),
          child: Text(
            element['subtitle']!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14.0,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(224, 254, 16, 1),
            onPressed: () {},
            child: const Text(
              'More',
              style: TextStyle(
                color: Color.fromRGBO(42, 46, 55, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
