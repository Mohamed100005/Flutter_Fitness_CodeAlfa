import 'package:flutter/material.dart';

class UserTip extends StatelessWidget {
  final String image;
  final String name;

  const UserTip({super.key,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 15.0,
        top: 10.0,
      ),
      child: Column(
        children: [
          Container(
            width: 105,
            height: 105,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(360.0),
              ),
              border: Border.all(
                color: const Color.fromRGBO(224, 254, 16,1),
                width: 7.0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
