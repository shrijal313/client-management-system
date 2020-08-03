import 'package:cms/widgets/emailFieldForm.dart';
import 'package:cms/widgets/paswordFieldForm.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0, vertical: 10,),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,  ),
                  child: Text("Welcome to CMS",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple[300],
                        letterSpacing: 1,
                      ))),
                ),
                Image(image:
                AssetImage("asset/images/front.png"),
                ),
               
            
                EmailFieldContainer(),
                PasswordFieldContainer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10.0),
                      child: Checkbox(value: checkBoxValue, 
                      activeColor: Theme.of(context).primaryColor,
                      onChanged: (bool value){
                        setState(() {
                          checkBoxValue = value;
                        });

                      },),
                    ),
                    Text("Remeber Me", style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.purple[300]
                      ),
                    )),
                  ],
                ),
                FlatButtonContainer(
                    width: double.infinity,
      height: MediaQuery.of(context).size.height * .06,
      child: Text("Login", style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        )
      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


