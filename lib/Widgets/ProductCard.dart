import 'package:dencoffee_app/Models/ProductModel.dart';
import 'package:dencoffee_app/Screens/DetailedProductPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class ProductCard extends StatelessWidget {

  late ProductModel productModel;
  ProductCard(this.productModel);

  String addLineBreaks(String input, int breakAfter) {
    List<String> words = input.split(' ');
    List<String> lines = [];
    String currentLine = '';

    for (String word in words) {
      if ((currentLine + word).length <= breakAfter) {
        currentLine += word + ' ';
      } else {
        lines.add(currentLine.trim());
        currentLine = word + ' ';
      }
    }

    if (currentLine.isNotEmpty) {
      lines.add(currentLine.trim());
    }

    return lines.join('\n');
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>{Get.to(DetailedProductPage(productModel: productModel))},
      child: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: myBoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.network(width: 100, height: 100,"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVYNnt1rYuAeeA7CQcCbzFUA7-u4AzNYoJNA&usqp=CAU"),
              ),
              Padding(padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productModel.name, style: const TextStyle(fontWeight: FontWeight.bold),),
                    Text(addLineBreaks(productModel.description, 40), style: const TextStyle(fontWeight: FontWeight.w300, color: Colors.grey),)
                    ,Text("${productModel.price} USD")

                  ],
                ),),

            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return const BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1,
        )
      )
    );
  }
}
