import 'package:flutter/material.dart';
import 'package:foodlist/models/food.dart';
import 'package:foodlist/pages/food_page.dart';

var foodList = [
 Food(name: 'ข้าวมันไก่',
     price: 40,
     imageUrl: 'ข้าวมันไก่.jpg'),
 Food(name: 'ข้าวหมูกรอบ',
     price: 55,
     imageUrl: 'ข้าวมันไก่.jpg'),
  Food(name: 'ผัดไทย',
      price: 50,
      imageUrl: 'ข้าวมันไก่.jpg'),
  Food(name: 'ผัดซีอิ๊ว',
      price: 40,
      imageUrl: 'ข้าวมันไก่.jpg'),
  Food(name: 'ข้าวขาหมู',
      price: 60,
      imageUrl: 'ข้าวมันไก่.jpg'),
  Food(name: 'ข้าวหน้าเป็ด',
      price: 65,
      imageUrl: 'ข้าวมันไก่.jpg'),
  Food(name: 'ส้มตำ',
      price: 40,
      imageUrl: 'ข้าวมันไก่.jpg'),
  Food(name: 'ข้าวผัด',
      price: 50,
      imageUrl: 'ข้าวมันไก่.jpg'),
  Food(name: 'ข้าวผัดกะเพราไก่ไข่ดาว',
      price: 60,
      imageUrl: 'ข้าวมันไก่.jpg')];
//พิมtateful จะได้คลาสนี้มา
class  FoodListPage extends StatefulWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  _FoodListPageState createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food List')),
      body: ListView.builder(itemBuilder: (BuildContext context,i) {//อันนี้จะทำการปัดขึ้นปัดลงอัตโนมัติ
        var food = foodList[i];
        return Card(
            child: InkWell(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  FoodPage(food: food)),
              );}, //สำหรับไฮไลท์กด
              child: Padding( //กดwrapวิสtext ทั้ง padding row column
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                   // Icon(Icons.fastfood,size: 30.0,),
                    //Image.network(food.imageUrl),
                    Image.asset('assets/images/${food.imageUrl}',width: 80.0,height: 80.0,fit: BoxFit.cover,),
                    SizedBox(width: 10.0),
                    Expanded( //เปลี่ยนcolumnเป็น widget ละมาเปลี่ยนเป็นExpandedอีกที
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(food.name,style: TextStyle(fontSize: 16.0)),
                          Text('${food.price} บาท')
                        ],
                      ),
                    ),
                    Text('${food.orderCount}')
                  ],
                ),
              ),
            ));
      },
      itemCount: foodList.length),//ถ้าใส่10วนลูป10รอบ
    );
  }
}
