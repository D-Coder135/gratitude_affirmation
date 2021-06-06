import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          //Monday: Make below into widget so can be used for LoginScreen and implement authenticationLayout
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/registration_login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Image.asset(
              "assets/images/logo.png",
              scale: 2,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 250, right: 110),
            child: Column(
              children: [
                Text(
                  'Registration',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
