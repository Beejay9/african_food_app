import 'package:african_food_app/food_details.dart';
import 'package:african_food_app/widgets/main_screen_item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/mainScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hi! What do you feel like cooking today?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: GridView(
        children: myLocations.map((eData) {
          return MainScreenItem(eData.id, eData.title, eData.imageUrl);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          // childAspectRatio: 2 / 1,
          mainAxisExtent: 270,
        ),
      ),
    );
  }
}
