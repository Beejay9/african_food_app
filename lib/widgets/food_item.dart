import 'dart:ui';

import 'package:african_food_app/screens/food_details_screen.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String id;
  final String title;
  final String duration;
  final double rating;
  final String imageUrl;

  FoodItem({
    required this.id,
    required this.title,
    required this.duration,
    required this.rating,
    required this.imageUrl,
  });

  void forFoodDetailsScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      FoodDetailsScreen.routeName,
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => forFoodDetailsScreen(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Rating (${rating.toString()})',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 65,
                        child: Text(
                          duration,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 222, 130),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 25,
                  ),
                  child: Container(
                    height: 140,
                    width: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
