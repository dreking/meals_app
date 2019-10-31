import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealItem extends StatelessWidget {
  final String imageUrl, title;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    @required this.title,
    @required this.imageUrl,
    @required this.complexity,
    @required this.duration,
    @required this.affordability,
  });

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
