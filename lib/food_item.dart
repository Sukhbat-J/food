import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String title;
  final String categoryId;
  final String id;
   // ignore: use_key_in_widget_constructors
   const FoodItem(this.title, this.categoryId, this.id);

  @override
  Widget build(BuildContext context) {
    return InkWell(
     
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.blue.withOpacity(0.7)],
            begin: Alignment.bottomRight,
            end: Alignment.topRight,
            stops: const [0.4, 0.7],
            tileMode: TileMode.repeated,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
    )
    );
  }
}