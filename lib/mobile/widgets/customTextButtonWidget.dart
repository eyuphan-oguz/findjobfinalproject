import 'package:findjobfinalproject/mobile/constant/projectTextStyle.dart';
import 'package:flutter/material.dart';


class CustomTextButtonWidget extends StatefulWidget {
  const CustomTextButtonWidget({Key? key, required this.text, required this.onPressed, required this.textStyle}) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final TextStyle textStyle;

  @override
  State<CustomTextButtonWidget> createState() => _CustomTextButtonWidgetState();
}

class _CustomTextButtonWidgetState extends State<CustomTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: widget.onPressed, child: Text(widget.text,style: widget.textStyle));
  }
}
