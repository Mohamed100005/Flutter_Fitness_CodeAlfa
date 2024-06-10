import 'package:flutter/material.dart';
import 'diet.dart';
import 'programs.dart';
import 'results.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(67, 76, 83,1),
        body: TabBarView(
          children:[
            Programs(),
            const Diet(),
            const Results(),
          ],
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.explicit, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.restaurant_menu, size: 26.0),
            ),
            Tab(
              icon: Icon(Icons.insert_chart, size: 26.0),
            ),
          ],
          labelPadding: EdgeInsets.all(5.0),
          labelColor: Color.fromRGBO(224, 254, 16, 1),
          unselectedLabelColor: Colors.white,
          indicatorWeight: 0.01,
        ),
      ),
    );
  }
}