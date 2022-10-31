import 'package:flutter/material.dart';
import 'package:foodlist/models/food.dart';

//statless
class FoodPage extends StatelessWidget {
  final Food food;
  const FoodPage({Key? key,required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food.name),),
      body: Column(
        children: [
         Stack(children: [
           Image.asset('assets/images/${food.imageUrl}',width: 500.0,height: 500.0,fit: BoxFit.cover),

           Text('${food.price }บาท')
         ],),
        ],
      ),
    );
  }
}
