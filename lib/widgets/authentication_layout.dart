import 'package:flutter/material.dart';

import 'package:gratitude_affirmation/models/sizedBoxes.dart';

class AuthenticationLayout extends StatelessWidget {
  final String title;
  final String subtitle;
  final String mainButtonTitle;
  final Widget form;
  final bool showTermsText;
  final Function onMainButtonTapped;
  final Function onCreateAccountTapped;
  final Function onForgetPasswordTapped;
  final VoidCallback? onBackPressed;
  final String validationMessage;
  final bool busy;

  const AuthenticationLayout({
    required this.title,
    required this.subtitle,
    required this.form,
    required this.onMainButtonTapped,
    required this.validationMessage,
    required this.onCreateAccountTapped,
    required this.onForgetPasswordTapped,
    this.onBackPressed,
    this.mainButtonTitle = 'Continue',
    this.showTermsText = false,
    this.busy = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(
        children: [
          if (onBackPressed == null) verticalSpaceLarge,
          if (onBackPressed != null) verticalSpaceRegular,
          if (onBackPressed != null)
            IconButton(
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: onBackPressed,
            ),
        ],
      ),
    );
  }
}
