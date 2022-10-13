import 'package:flutter/material.dart';
import 'package:the_city/common/constants/custom_colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.7,
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * 0.02,
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(
          MediaQuery.of(context).size.height * 0.02,
        ),
      ),
      child: Text(
        buttonText.toUpperCase(),
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: textColor,
            ),
      ),
    );
  }
}
