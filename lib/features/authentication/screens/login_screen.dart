import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_city/common/constants/custom_colors.dart';
import 'package:the_city/common/widgets/logo_text.dart';

import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/custom_input.dart';

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
          child: SingleChildScrollView(
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
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),

                //Phone Number TextField

                const CustomInput(
                  hintText: 'Phone Number',
                  iconData: Icons.phone_outlined,
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),

                //Submit Button

                const CustomButton(
                  buttonText: 'Submit',
                  buttonColor: purple,
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),

                //Or Login With Google

                Text(
                  'Or'.toUpperCase(),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: textColor,
                      ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),

                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.03,
                    horizontal: MediaQuery.of(context).size.width * 0.02,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.google,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Continue Using Google'.toUpperCase(),
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: textColor,
                            ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
