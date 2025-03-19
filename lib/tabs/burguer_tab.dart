import 'package:donut_app_2b_delgado/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final List burgerOnSale = [
    // [burger, burgerPrice, burgerColor, imageName],
     ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_burger.png"],
     ["Strawberry","Dunkin burgers","45", Colors.red,"lib/images/strawberry_burger.png"],
     ["Grape","Costco","84", Colors.purple,"lib/images/grape_burger.png"],
     ["Choco","Walmart","95", Colors.brown, 'lib/images/chocolate_burger.png'],
     ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_pizza.png"],
     ["Strawberry","Dunkin pizzas","45", Colors.red,"lib/images/strawberry_pizza.png"],
     ["Grape","Costco","84", Colors.purple,"lib/images/grape_pizza.png"],
     ["Choco","Walmart","95", Colors.brown, 'lib/images/chocolate_pizza.png'],
   ];
  BurgerTab({super.key});

  @override
   Widget build(BuildContext context) {
    //Acomodar elementos en Cuadricula
     return GridView.builder(
    //Eementos en nuestra lista
     itemCount: burgerOnSale.length,
     padding: const EdgeInsets.all(8.0),
     //Organiza como distribuir
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       //numero de columnas
       crossAxisCount: 2,
       childAspectRatio: 1/1.5
       ),
       itemBuilder: (context, index){
          var burgerTile = BurgerTile(
            burger: burgerOnSale[index][0],
            burgerStore: burgerOnSale[index][1],
            burgerPrice:burgerOnSale[index][2],
            imageName:burgerOnSale[index][3], 
            burgerFlavor: burgerOnSale[index][4], 
            
          );
          return burgerTile;
        }
      );
  }
}