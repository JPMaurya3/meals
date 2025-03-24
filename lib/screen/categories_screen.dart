import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/widgets/category_grid_item.dart';
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
@override
Widget build(BuildContext context){
  return Scaffold(
    body: GridView(
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3/2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
        ),
      children: [
        // for each loop
        for(final category in availableCategories)
          CategoryGridItem(category:category)

       /* Text("1",style: TextStyle(color: Colors.white),),
        Text("2",style: TextStyle(color: Theme.of(context).primaryColorDark),),
        Text("3",style: TextStyle(color: Theme.of(context).primaryColorDark),),
        Text("4",style: TextStyle(color: Theme.of(context).primaryColorDark),),
        Text("5",style: TextStyle(color: Theme.of(context).primaryColorDark),),
        Text("6",style: TextStyle(color: Theme.of(context).primaryColorDark),)*/
      ],
    ),

  );
}}