import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductFilterWidget extends StatelessWidget {

  String filterName;




  ProductFilterWidget(this.filterName, {super.key});

  @override
  Widget build(BuildContext context) {
    return filterOption();
  }

  GestureDetector filterOption(){
    return GestureDetector(
      onTap: ()=>{},
      child: Container(
        width: 100,
        height: 35,
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.all(Radius.circular(45))),

        child: Center(
          child: Text(filterName),
        ),
      ),
    );
  }
  }

