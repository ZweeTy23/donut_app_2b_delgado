import 'package:donut_app_2b_delgado/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final List pizzaOnSale = [
    // [pizza, pizzaPrice, pizzaColor, imageName],
     ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_pizza.png"],
     ["Strawberry","Dunkin pizzas","45", Colors.red,"lib/images/strawberry_pizza.png"],
     ["Grape","Costco","84", Colors.purple,"lib/images/grape_pizza.png"],
     ["Choco","Walmart","95", Colors.brown, 'lib/images/chocolate_pizza.png'],
     ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_pizza.png"],
     ["Strawberry","Dunkin pizzas","45", Colors.red,"lib/images/strawberry_pizza.png"],
     ["Grape","Costco","84", Colors.purple,"lib/images/grape_pizza.png"],
     ["Choco","Walmart","95", Colors.brown, 'lib/images/chocolate_pizza.png'],
   ];
  PizzaTab({super.key});

  @override
   Widget build(BuildContext context) {
    //Acomodar elementos en Cuadricula
     return GridView.builder(
    //Eementos en nuestra lista
     itemCount: pizzaOnSale.length,
     padding: const EdgeInsets.all(8.0),
     //Organiza como distribuir
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       //numero de columnas
       crossAxisCount: 2,
       childAspectRatio: 1/1.5
       ),
       itemBuilder: (context, index){
          var pizzaTile = PizzaTile(
            pizza: pizzaOnSale[index][0],
            pizzaStore: pizzaOnSale[index][1],
            pizzaPrice:pizzaOnSale[index][2],
            imageName:pizzaOnSale[index][3], 
            pizzaFlavor: pizzaOnSale[index][4], 
            
          );
          return pizzaTile;
        }
      );
  }
}