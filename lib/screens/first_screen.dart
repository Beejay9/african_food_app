import 'package:african_food_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/firstScreen';

  void forMainScreen(BuildContext context) {
    Navigator.of(context).pushReplacementNamed(MainScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/Images/IMG_20220717_174924.jpg'),
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Column(
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'LEARN AMAZING AFRICAN RECIPES',
                        style: TextStyle(
                          color: Color.fromARGB(255, 250, 237, 237),
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  
                  child: Text(
                    'Let\'s make a delicious dish with the best recipe for the family',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(200, 55),
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () => forMainScreen(context),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Let\'s Go!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
