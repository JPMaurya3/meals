import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

class MealScreen extends StatelessWidget {
  final String title;
  final List<Meal> meal;
  const MealScreen({required this.title, required this.meal, super.key});

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Uh oh ... nothing is here",
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            "Try Selecting a different category",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          )
        ],
      ),
    );
    if (meal.isNotEmpty) {
      content = ListView.builder(
       //to determine whether the ListView should take up as much space as it can (when set to false )
       // or only as much space as required by its children (when set to true )
       shrinkWrap: true,
          itemCount: meal.length, itemBuilder: (ctx, index) {
        return Text(meal[index].title);
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body:
            content /*Column(
     children: meal.map((value){
      return Text(value.);
     }).toList(),
    ),*/
        );
  }
}
