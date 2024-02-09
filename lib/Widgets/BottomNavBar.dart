import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Consts/Colors.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: AppColors.secundary,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[

        BottomNavigationBarItem(icon: Icon(Icons.home_outlined, size: 30,), label: "test",),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined, size: 30,), label: "test",),
        BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined, size: 30,), label: "test"),
        BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined, size: 30,), label: "test"),

      ],
    ),
    );
  }
}
