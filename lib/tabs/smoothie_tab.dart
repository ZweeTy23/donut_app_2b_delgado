import 'package:donut_app_2b_delgado/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final List smoothieOnSale = [
    // [smoothie, smoothiePrice, smoothieColor, imageName],
     ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_smoothie.png"],
     ["Strawberry","Dunkin smoothies","45", Colors.red,"lib/images/strawberry_smoothie.png"],
     ["Grape","Costco","84", Colors.purple,"lib/images/grape_smoothie.png"],
     ["Choco","Walmart","95", Colors.brown, 'lib/images/chocolate_smoothie.png'],
     ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_pizza.png"],
     ["Strawberry","Dunkin pizzas","45", Colors.red,"lib/images/strawberry_pizza.png"],
     ["Grape","Costco","84", Colors.purple,"lib/images/grape_pizza.png"],
     ["Choco","Walmart","95", Colors.brown, 'lib/images/chocolate_pizza.png'],
   ];
  SmoothieTab({super.key});

  @override
   Widget build(BuildContext context) {
    //Acomodar elementos en Cuadricula
     return GridView.builder(
    //Eementos en nuestra lista
     itemCount: smoothieOnSale.length,
     padding: const EdgeInsets.all(8.0),
     //Organiza como distribuir
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       //numero de columnas
       crossAxisCount: 2,
       childAspectRatio: 1/1.5
       ),
       itemBuilder: (context, index){
          var smoothieTile = SmoothieTile(
            smoothie: smoothieOnSale[index][0],
            smoothieStore: smoothieOnSale[index][1],
            smoothiePrice:smoothieOnSale[index][2],
            imageName:smoothieOnSale[index][3], 
            smoothieFlavor: smoothieOnSale[index][4], 
            
          );
          return smoothieTile;
        }
      );
  }
}