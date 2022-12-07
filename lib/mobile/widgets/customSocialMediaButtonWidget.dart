import 'package:flutter/material.dart';


class CustomSocialMediaButtonWidget extends StatefulWidget {
  const CustomSocialMediaButtonWidget({Key? key, required this.imagePath, required this.onPressed, required this.size}) : super(key: key);
  final String imagePath;
  final VoidCallback onPressed;
  final Size size;

  @override
  State<CustomSocialMediaButtonWidget> createState() => _CustomSocialMediaButtonWidgetState();
}

class _CustomSocialMediaButtonWidgetState extends State<CustomSocialMediaButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.size.width*0.17,
        height: widget.size.height*0.070,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Image.asset(widget.imagePath)
      ),
    );
  }
}
