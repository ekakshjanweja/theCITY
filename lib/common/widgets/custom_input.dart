import 'package:flutter/material.dart';
import 'package:the_city/common/constants/custom_colors.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final IconData iconData;

  const CustomInput({
    Key? key,
    required this.hintText,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      decoration: BoxDecoration(
        color: black2,
        borderRadius: BorderRadius.circular(
          MediaQuery.of(context).size.height * 0.02,
        ),
      ),
      child: TextField(
        style:
            Theme.of(context).textTheme.bodyMedium!.copyWith(color: textColor),
        obscureText: false,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(
            iconData,
            color: purple,
          ),
        ),
      ),
    );
  }
}
