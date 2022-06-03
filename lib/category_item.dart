import 'package:flutter/material.dart';
import './dummy_food.dart';
import './food_item.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const CategoryItem(this.title, this.color, this.id);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(context,
            MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text(title)),
            body: GridView(
              padding: const EdgeInsets.all(20),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                //grid iin design//
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              // children: DUMMY_FOODS
              //     .map((food) {
              //       if (food.categoryId == this.id){
              //         return FoodItem(food.title, this.id, food.id);
              //       }
              //       return FoodItem('', '', '');
              //     })
              //     .toList(),
              children: DUMMY_FOODS.where((food) => food.categoryId == id)
              .map((e) => FoodItem(e.title, title, e.id)).toList(),
            ),
          );
        }))
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //   content: Text(this.title),
        //   duration: Duration(milliseconds: 500),
        //   elevation: 50
        // ))
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color, color.withOpacity(0.7)],
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
      ),
    );
  }
}
