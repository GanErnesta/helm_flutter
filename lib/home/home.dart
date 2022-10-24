import 'package:flutter_detailpage/home/widget/best_sell.dart';
import 'package:flutter_detailpage/home/widget/custom_app_bar.dart';
import 'package:flutter_detailpage/home/widget/new_arivval.dart';
import 'package:flutter_detailpage/home/widget/search_input.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(),
            NewArivval(),
            BestSell(),
          ],
        ),
      ),
    );
  }
}