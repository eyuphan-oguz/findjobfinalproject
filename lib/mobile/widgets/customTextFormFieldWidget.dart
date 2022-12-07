import 'package:findjobfinalproject/mobile/constant/projectIcon.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatefulWidget {
  const CustomTextFormFieldWidget({Key? key, required this.hintText,  required this.isPasswordField, required this.controller, required this.type, required this.size, required this.icon, required this.visible}) : super(key: key);
  final String hintText;
  final Size size;
  final Icon icon;
  final bool isPasswordField;
  final TextEditingController controller;
  final TextInputType type;
  final bool visible;

  @override
  State<CustomTextFormFieldWidget> createState() => _CustomTextFormFieldWidgetState();
}
class _CustomTextFormFieldWidgetState extends State<CustomTextFormFieldWidget> {


  late bool _obscureText = widget.visible;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.center,
      height: widget.size.height*0.1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: TextFormField(
          keyboardType: widget.type,
          controller: widget.controller,
          obscureText: _obscureText,
          textAlignVertical:
          widget.isPasswordField ? TextAlignVertical.center : null,
          decoration: InputDecoration(
              prefixIcon: widget.icon,
              suffixIcon: widget.isPasswordField
                  ? InkWell(
                  onTap: () {
                    _toggle();
                  },
                  child: _obscureText
                      ? ProjectIcon.visibleOffIcon
                      : ProjectIcon.visibleOnIcon)
                  : null,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              contentPadding:
              EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontFamily: 'Poppins',
              )),
        ),
      ),
    );
  }
}
