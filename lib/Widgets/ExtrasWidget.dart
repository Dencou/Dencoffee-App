import 'package:dencoffee_app/Models/ExtrasModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtrasWidget extends StatefulWidget {

  final ExtrasModel extrasModel;

  const ExtrasWidget({super.key, required this.extrasModel});

  @override
  State<ExtrasWidget> createState() => _ExtrasWidgetState();
}

class _ExtrasWidgetState extends State<ExtrasWidget> {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            shape:CircleBorder(),
            value: isChecked,
            onChanged: (bool? value) { setState(() { isChecked = value!;}
            );
           }),
        Text(widget.extrasModel.extraName, style: TextStyle(fontWeight: FontWeight.w300)),
        Spacer(),
        Text("${widget.extrasModel.price} usd", style: TextStyle(fontWeight: FontWeight.w300))
      ],
    );
  }
}
