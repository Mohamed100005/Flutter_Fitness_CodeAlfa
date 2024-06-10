import 'package:flutter/material.dart';

import 'next_step.dart';

class EasyActivityDetails extends StatelessWidget {
  int level = 1;

  EasyActivityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NextStep(
          image: 'assets/images/image005.jpg',
          title: 'Plank',
          seconds: 500,
        ),
        NextStep(
          image: 'assets/images/image006.jpg',
          title: 'Push-ups',
          seconds: 700,
        ),
        NextStep(
          image: 'assets/images/image007.jpg',
          title: 'Lateral Raise',
          seconds: 500,
        )
      ],
    );
  }
}

class MediamActivityDetails extends StatelessWidget {
  int level = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NextStep(
          image: 'assets/images/image005.jpg',
          title: 'Plank',
          seconds: 1,
        ),
        NextStep(
          image: 'assets/images/image006.jpg',
          title: 'Push-ups',
          seconds: 2,
        ),
        NextStep(
          image: 'assets/images/image007.jpg',
          title: 'Lateral Raise',
          seconds: 3,
        )
      ],
    );
  }
}

class HardActivityDetails extends StatelessWidget {
  int level = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NextStep(
          image: 'assets/images/image005.jpg',
          title: 'Plank',
          seconds: 50,
        ),
        NextStep(
          image: 'assets/images/image006.jpg',
          title: 'Push-ups',
          seconds: 80,
        ),
        NextStep(
          image: 'assets/images/image007.jpg',
          title: 'Lateral Raise',
          seconds: 50,
        ),
      ],
    );
  }
}
