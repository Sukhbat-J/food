import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const CategoryItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
                      colors: [color,color.withOpacity(0.7)],
                      begin: Alignment.bottomRight,
                      end: Alignment.topRight,
                      stops: const [0.4, 0.7],
                      tileMode: TileMode.repeated,),
        
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
