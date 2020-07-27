import 'package:cms/widgets/emailFieldForm.dart';
import 'package:cms/widgets/paswordFieldForm.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Welcome to CMS",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple[300],
                        letterSpacing: 1,
                      ))),
                ),
                Image(image:
                AssetImage("asset/images/front.png"),
                ),
                // SvgPicture.asset(
                //   "asset/images/login.svg",
                //   color: Colors.white,
                //   height: MediaQuery.of(context).size.height * .6,
                // ),
                SizedBox(
                  height: 10,
                ),
                EmailFieldContainer(),
                PasswordFieldContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

