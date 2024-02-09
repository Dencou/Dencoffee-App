import 'dart:ffi';

import 'package:dencoffee_app/Models/ExtrasModel.dart';
import 'package:dencoffee_app/StateStore/cart-store.dart';
import 'package:dencoffee_app/Widgets/ProductCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/ProductModel.dart';
import '../Services/CartInterfaceImpl.dart';
import '../Widgets/ProductFilterWidget.dart';

class OrderProductPage extends StatefulWidget {
  const OrderProductPage({super.key});

  @override
  State<OrderProductPage> createState() => _OrderProductPageState();
}

class _OrderProductPageState extends State<OrderProductPage> {

  List<ProductModel> productsToDisplay = [
    ProductModel(1,"Latte", 10, "Two espresso shots with steamed milk", "grande", "grande", "coffee", [], 0),
    ProductModel(2,"Iced Latte", 8, "Two espresso shots with ice and milk", "grande", "123", "coffee",[ExtrasModel("Soy milk", "231")], 0),
    ProductModel(3,"Cappuccino", 12, "One shot of espresso with steamed milk and chocolate sprinkles", "grande", "123", "coffee",[ExtrasModel("Espresso shot", "231")],0),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            filterOptions(),
            productsToDisplay.isEmpty
                ? const Center(child: Text("no products found"),)
                : Column(
              children: [...productsToDisplay.map((e) => ProductCard(e))],
            ),
          ],
        ),
      ),

      floatingActionButton: cartInfoFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget filterOptions(){
    return Row(
      children: [
        ProductFilterWidget("Hot" ),

        ProductFilterWidget("Cold" ),
      ],
    );
  }

  Widget cartInfoFloatingButton(){
    if (cartStore.cart.isNotEmpty){
      return FloatingActionButton.extended(
        onPressed: () => {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context){
                return Container(
                  padding: EdgeInsets.all(30),
                  width: double.infinity,
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...cartStore.cart.map((e) => Text("${e.name} x ${e.qty}")),
                      Spacer(),
                      Center(
                        child: ElevatedButton(onPressed: (){}, child: Text("Pay ${cartStore.total.toString()}"),),
                      )
                    ],
                  ),
                );
              }
          )

        }, label: Text("View Cart"),

      );
    }
    else {
      return Container();
    }

  }
}
