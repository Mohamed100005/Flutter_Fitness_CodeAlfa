import 'package:flutter/material.dart';
import '../data/dishes.dart';
import '../models/exercise.dart';
import 'image_card_with_basic_footer.dart';

class TabViewBase extends StatelessWidget {
  final String tabName;

  const TabViewBase({super.key, required this.tabName});

  List<Widget> _renderItem(Size size, String category) {
    List<Map> filteredDishes =
        dishes.where((dish) => dish['category'] == category).toList();

    return List<Widget>.generate(filteredDishes.length, (index) {
      var tag = filteredDishes[index]['title'] + index.toString();
      Exercise exercise = Exercise(
        image: filteredDishes[index]['image'],
        title: filteredDishes[index]['title'],
        time: filteredDishes[index]['time'],
        difficult: filteredDishes[index]['calories'],
        level: filteredDishes[index].containsKey('level')
            ? filteredDishes[index]['level']
            : null,
      );

      return Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        child: ImageCardWithBasicFooter(
          exercise: exercise,
          tag: tag,
          imageWidth: size.width,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: size.width,
        color: const Color.fromRGBO(42, 46, 55, 1),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(67, 76, 83, 1),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Track my $tabName',
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(224, 254, 16, 1),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add),
                    iconSize: 25.0,
                    color: const Color.fromRGBO(224, 254, 16, 1),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const Text(
              "Breakfast",
              style: TextStyle(color: Colors.white),
            ),
            Column(children: _renderItem(size, "breakfast")),
            const Text(
              "Lunch",
              style: TextStyle(color: Colors.white),
            ),
            Column(children: _renderItem(size, "lunch")),
            const Text(
              "Dinner",
              style: TextStyle(color: Colors.white),
            ),
            Column(children: _renderItem(size, "dinner")),
          ],
        ),
      ),
    );
  }
}
