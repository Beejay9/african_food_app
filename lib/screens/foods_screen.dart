import 'package:african_food_app/food_details.dart';
import 'package:african_food_app/widgets/food_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget {
  // final String title;
  // final String duration;
  // final String imageUrl;
  // final double rating;

  // FoodScreen({
  //   required this.title,
  //   required this.duration,
  //   required this.imageUrl,
  //   required this.rating,
  // });
  static const routeName = '/foodScreen';
  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final foodId = routeArguments['id'];
    final foodTitle = routeArguments['title'];
    final selectedFood = myFoods.where((element) {
      return element.locations.contains(foodId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(foodTitle as String),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return FoodItem(
            id: selectedFood[index].id,
            title: selectedFood[index].title,
            duration: selectedFood[index].duration,
            rating: selectedFood[index].rating,
            imageUrl: selectedFood[index].imageUrl,
          );
        }),
        itemCount: selectedFood.length,
      ),
    );
  }
}
