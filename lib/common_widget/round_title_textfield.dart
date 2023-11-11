import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';

class RoundTitleTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String placeHolder;
  final String title;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;

  const RoundTitleTextField(
      {super.key,
      required this.placeHolder,
      required this.title,
      this.controller,
      this.keyboardType,
      this.bgColor,
      this.left,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor ?? TColor.textfield,
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: left!,
            ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: 47,
                  margin: const EdgeInsets.only(
                    top: 13,
                  ),
                  alignment: Alignment.topLeft,
                  child: TextField(
                    autocorrect: false,
                    controller: controller,
                    keyboardType: keyboardType,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 30),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: placeHolder,
                      hintStyle: TextStyle(
                        color: TColor.placeholder,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 47,
                  margin: const EdgeInsets.only(
                    top: 13,
                    left: 30,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
