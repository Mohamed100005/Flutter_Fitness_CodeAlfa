import 'package:flutter/material.dart';
import '../components/header.dart';
import '../components/tab_view_base.dart';

class Diet extends StatelessWidget {
  const Diet({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor:const Color.fromRGBO(42, 46, 55, 1),
            flexibleSpace: Header(
              'Diet',
              rightSide: Container(
                height: 35.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                margin: const EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(100, 140, 255, 1.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Center(
                  child:  Text(
                    'Tracker',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            ),
            bottom: TabBar(
              unselectedLabelColor:  const Color.fromRGBO(224, 254, 16, 1),
              tabs: [
                Container(
                  height: 30.0,
                  child: const Tab(
                   child: Text(
                     "Breakfast"
                   ),
                  ),
                ),
                Container(
                  height: 30.0,
                  child: const Tab(
                    child: Text(
                        "Lunch"
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                  child: const Tab(
                    child: Text(
                        "Dinner"
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                  child: const Tab(
                    child: Text(
                        "Snacks"
                    ),
                  ),
                ),
              ],
              labelColor: Colors.white,
              indicatorWeight: 4.0,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: const Color.fromRGBO(215, 225, 255, 1.0),
            ),
          ),
          body: const TabBarView(
            children: [
              TabViewBase(
                tabName: 'Breakfast',
              ),
              TabViewBase(
                tabName: 'Lunch',
              ),
              TabViewBase(
                tabName: 'Dinner',
              ),
              TabViewBase(
                tabName: 'Snacks',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
