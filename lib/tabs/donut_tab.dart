import 'package:donut_app_2b_delgado/utils/donut_tile.dart';
import 'package:flutter/material.dart';


class DonutTab extends StatelessWidget {
  //Lista de Donas
   final List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName],
     ["Ice Cream","Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
     ["Strawberry","Dunkin Donuts","45", Colors.red,"lib/images/strawberry_donut.png"],
     ["Grape","Costco","84", Colors.purple,"lib/images/grape_donut.png"],
     ["Choco","Walmart","95", Colors.brown, 'lib/images/chocolate_donut.png'],
   ];
  DonutTab({super.key});

   @override
   Widget build(BuildContext context) {
    //Acomodar elementos en Cuadricula
     return GridView.builder(
    //Eementos en nuestra lista
     itemCount: donutsOnSale.length,
     padding: const EdgeInsets.all(8.0),
     //Organiza como distribuir
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       //numero de columnas
       crossAxisCount: 2,
       childAspectRatio: 1/1.5
       ),
       itemBuilder: (context, index){
          var donutTile = DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice:donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName:donutsOnSale[index][4], 
            
          );
          return donutTile;
        }
      );
  }
}