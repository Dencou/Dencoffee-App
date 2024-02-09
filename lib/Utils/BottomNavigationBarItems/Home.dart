import 'package:dencoffee_app/Utils/BottomNavigationBarItems/Order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../Consts/Colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network("https://images.adsttc.com/media/images/5d5c/67c5/284d/d166/2000/03ae/large_jpg/feature_-_SAEM_Cafe_-_06.jpg?1566336933"),
          Column(
            children: [
              Text("Place your order here"),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: ()=>{Get.to(Order())},
                  child: Text("Delivery"),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: Colors.white),),
              ),
              SizedBox(
                width: 150,
                child:  ElevatedButton(
                  onPressed: () => {Get.to(Order())},
                  child: Text("take awayy"),
                  style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary, foregroundColor: Colors.white),),

              ),
            ],
          ),
          SizedBox(),
        ],

      ),
    );
  }
}
