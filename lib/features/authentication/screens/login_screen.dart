import 'package:flutter/material.dart';
import 'package:the_city/common/constants/custom_colors.dart';
import 'package:the_city/common/widgets/logo_text.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02,
            horizontal: MediaQuery.of(context).size.width * 0.02,
          ),
          child: Column(
            children: [
              //Logo Text

              const LogoText(),

              //Sub Heading Text

              Text(
                'Designed to solve community problems'.toUpperCase(),
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: textColor,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
