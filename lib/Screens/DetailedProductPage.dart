import 'package:dencoffee_app/Consts/Fonts.dart';
import 'package:dencoffee_app/Models/ProductModel.dart';
import 'package:dencoffee_app/Screens/OrderProductPage.dart';
import 'package:dencoffee_app/Services/CartInterfaceImpl.dart';
import 'package:dencoffee_app/StateStore/cart-store.dart';
import 'package:dencoffee_app/Widgets/ExtrasWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailedProductPage extends StatefulWidget {
  final ProductModel productModel;

  const DetailedProductPage({super.key, required this.productModel});

  @override
  State<DetailedProductPage> createState() => _DetailedProductPageState();
}

class _DetailedProductPageState extends State<DetailedProductPage> {

  TextStyle header = TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  TextStyle subHeader = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
  TextStyle paragraph = TextStyle(fontWeight: FontWeight.w300);
  CartInterfaceImpl interfaceImpl = CartInterfaceImpl();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Image.network(
                  width: 230,
                  height: 200,
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVYNnt1rYuAeeA7CQcCbzFUA7-u4AzNYoJNA&usqp=CAU"),
            ),
          ),
          Text(widget.productModel.name, style: header,),
          Text(widget.productModel.description, style: paragraph,),
          const Divider(height: 40,),
          Text("Extra", style: subHeader),
              displayExtras(),
          Row(
            children: [
              IconButton(onPressed: () => {}, icon: const Icon(Icons.add)),
              Text("0"),
              IconButton(onPressed: () => {}, icon: const Icon(Icons.remove)),
              Spacer(),
              ElevatedButton(
                  onPressed: () => { onAddButton() },
                  child: const Text("Add"))
            ],
          )
        ],
      ),
    ));
  }

  Widget displayExtras(){
    return widget.productModel.extras.isEmpty
        ? const Text("No extras avaliable at this moment")
        : Column(
      children: [
        ...widget.productModel.extras.map(
                (e) => ExtrasWidget(extrasModel: e)
        ),
      ],
    );
  }

  onAddButton() {
    interfaceImpl.addProduct(widget.productModel);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Item added successfully")));


  }
}
