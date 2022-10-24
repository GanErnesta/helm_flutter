import 'package:flutter_detailpage/home/widget/categories_list.dart';
import 'package:flutter_detailpage/home/widget/clothes_item.dart';
import 'package:flutter_detailpage/models/clothes.dart';
import 'package:flutter/material.dart';

class NewArivval extends StatelessWidget{
  final clothesList = Clothes.generateClothes();
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          CategoriesList('New Arivval'),
          Container(
            height: 280,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25,),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem(clothesList[index]),
              separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
              itemCount: clothesList.length,
            ),
          )
        ],
      ),
    );
  }
}