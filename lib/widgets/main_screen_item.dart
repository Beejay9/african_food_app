import 'package:african_food_app/screens/foods_screen.dart';
import 'package:flutter/material.dart';

class MainScreenItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  MainScreenItem(this.id, this.title, this.imageUrl);

  void forFoodScreen(BuildContext context) {
    Navigator.of(context).pushNamed(
      FoodScreen.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => forFoodScreen(context),
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 233, 233, 233),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
