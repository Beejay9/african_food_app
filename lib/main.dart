import 'package:african_food_app/screens/first_screen.dart';
import 'package:african_food_app/screens/food_details_screen.dart';
import 'package:african_food_app/screens/foods_screen.dart';
import 'package:african_food_app/screens/main_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(AfricanFoodApp());
}

class AfricanFoodApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'African Meals Recipes',
      theme: ThemeData(
        fontFamily: 'Ibarra_Real_Nova',
        primaryColor: Color.fromARGB(255, 37, 37, 37),
        canvasColor: Color.fromARGB(255, 17, 17, 16),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 17, 17, 16),
          toolbarHeight: 100,
          elevation: 1,
        ),
      ),
      initialRoute: FirstScreen.routeName,
      routes: {
        FirstScreen.routeName: (context) => FirstScreen(),
        MainScreen.routeName: (context) => MainScreen(),
        FoodScreen.routeName: (context) => FoodScreen(),
        FoodDetailsScreen.routeName: (context) => FoodDetailsScreen(),
      },
    );
  }
}
