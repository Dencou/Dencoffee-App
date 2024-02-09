import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../Screens/OrderProductPage.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: ()=>{ Get.to(OrderProductPage()) }, icon: Image.network("https://static.vecteezy.com/system/resources/previews/012/860/832/non_2x/coffee-cup-outline-icon-free-vector.jpg", height: 180, width: 180,)),
              const Text("Coffee", style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: ()=>{}, icon: Image.network("https://cdn-icons-png.flaticon.com/512/3348/3348044.png", height: 180, width: 180,)),
              const Text("Food & Snacks", style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    );
  }
}
