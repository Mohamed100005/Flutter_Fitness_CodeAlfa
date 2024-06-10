import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/section.dart';
import '../components/daily_tip.dart';
import '../components/image_card_with_basic_footer.dart';
import '../components/image_card_with_internal.dart';
import '../components/main_card_programs.dart';
import '../components/user_photo.dart';
import '../components/user_tip.dart';
import '../models/exercise.dart';
import '../pages/activity_detail.dart';

class Programs extends StatelessWidget {
  Programs({super.key});
  final List<Exercise> exercises = [
    Exercise(
      image: 'assets/images/image001.jpg',
      title: 'Easy Start',
      time: '5 min',
      difficult: 'Low',
      level: 1
    ),
    Exercise(
      image: 'assets/images/image002.jpg',
      title: 'Medium Start',
      time: '10 min',
      difficult: 'Medium',
      level: 2
    ),
    Exercise(
      image: 'assets/images/image003.jpg',
      title: 'Pro Start',
      time: '25 min',
      difficult: 'High',
      level: 3
    )
  ];



  List<Widget> generateList(BuildContext context) {
    List<Widget> list = [];
    int count = 0;
    for (var exercise in exercises) {
      Widget element = Container(
        margin: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          child: ImageCardWithBasicFooter(
            exercise: exercise,
            tag: 'imageHeader$count', imageWidth: 60,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) {
                  return ActivityDetail(
                    exercise: exercise,
                    tag: 'imageHeader$count',
                  );
                },
              ),
            );
          },
        ),
      );
      list.add(element);
      count++;
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(42, 46, 55, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children:[
                Header(
                  'Programs',
                  rightSide: UserPhoto(),
                ),
                MainCardPrograms(), // MainCard
                Section(
                  title: 'Fat burning',
                  horizontalList: generateList(context),
                ),
                Section(
                  title: 'Abs Generating',
                  horizontalList: const [
                     ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Core \nWorkout',
                      duration: '7 min',
                    ),
                     ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Core \nWorkout',
                      duration: '7 min',
                    ),
                     ImageCardWithInternal(
                      image: 'assets/images/image004.jpg',
                      title: 'Core \nWorkout',
                      duration: '7 min',
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  padding: const EdgeInsets.only(top: 10.0, bottom: 40.0),
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(42, 46, 55, 1) ,
                  ),
                  child: Column(
                    children: [
                      Section(
                        title: 'Daily Tips',
                        horizontalList: [
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'User Img',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'User Img',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'User Img',
                          ),
                          UserTip(
                            image: 'assets/images/image010.jpg',
                            name: 'User Img',
                          ),
                        ],
                      ),
                      Section(
                        horizontalList: [
                          DailyTip(),
                          DailyTip(),
                          DailyTip(),
                        ], title: '',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
