import 'package:flutter/material.dart';

import '../constants/custom_colors.dart';

class LogoText extends StatelessWidget {
  const LogoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'the',
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: textColor,
                  fontWeight: FontWeight.w700,
                ),
          ),
          TextSpan(
            text: 'CITY',
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: purple,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ],
      ),
    );
  }
}
