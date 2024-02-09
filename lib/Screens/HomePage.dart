import 'package:dencoffee_app/Consts/Colors.dart';
import 'package:dencoffee_app/Utils/BottomNavigationBarItems/Order.dart';
import 'package:dencoffee_app/Utils/BottomNavigationBarItems/Profile.dart';
import 'package:dencoffee_app/Widgets/BottomNavBar.dart';
import 'package:flutter/material.dart';

import '../Utils/BottomNavigationBarItems/Home.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();



}

class _HomePageState extends State<HomePage> {

  var currScreenIndex = 0;
  var screens = [
    Home(),
    Order(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currScreenIndex,
        onTap: (idx) => setState(() {
          currScreenIndex = idx;
        }),
      backgroundColor: AppColors.secundary,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 30,), label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined, size: 30,), label: "order",),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined, size: 30,), label: "profile"),

      ],
    ),
    );
  }
}
