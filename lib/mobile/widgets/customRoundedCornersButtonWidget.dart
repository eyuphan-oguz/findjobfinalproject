import 'package:findjobfinalproject/mobile/constant/projectColor.dart';
import 'package:findjobfinalproject/mobile/constant/projectTextStyle.dart';
import 'package:flutter/material.dart';

class CustomRoundedCornersButtonWidget extends StatefulWidget {
  CustomRoundedCornersButtonWidget({Key? key, required this.size, required this.text, required this.onPressed, this.imagePath}) : super(key: key);
  final Size size;
  final String text;
  final VoidCallback  onPressed;
  final String? imagePath;

  @override
  State<CustomRoundedCornersButtonWidget> createState() => _CustomRoundedCornersButtonWidgetState();
}

class _CustomRoundedCornersButtonWidgetState extends State<CustomRoundedCornersButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: widget.size.height*0.08,
          width: widget.size.width*0.75,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: ProjectColor.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
            onPressed:widget.onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.text,
                  style:
                  ProjectTextStyle.subTitle1.copyWith(color: ProjectColor.white),
                ),
                SizedBox(width:widget.size.width*0.02,),
                widget.imagePath!=null ?
                Image.asset(widget.imagePath.toString(),width: widget.size.width*0.07,):Container()
              ],
            ),
          )),
    );
  }
}