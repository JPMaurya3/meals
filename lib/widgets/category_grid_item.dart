// sap rate grid  category
import 'package:flutter/material.dart';
import 'package:meals/models/category_items.dart';
class CategoryGridItem extends StatelessWidget{
  final Category category;
  const CategoryGridItem({required this.category});

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){},
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding:const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                category.color.withOpacity(0.55),
                category.color.withOpacity(0.9)
              ],
          begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
              borderRadius: BorderRadius.circular(16)
        ),
        child: Text(category.title,style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        ),),
      ),
    );
  }
}