import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordFieldContainer extends StatelessWidget {

  const PasswordFieldContainer({
    Key key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .8,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xffb780d9)),
        child: TextField(
          obscureText: true,
          cursorColor: Colors.white, 
          keyboardType: TextInputType.visiblePassword,
          style: GoogleFonts.poppins(
            textStyle:  TextStyle(color: Colors.white,
         ),
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.lock_outline, color: Colors.white, size: 25),
            suffixIcon: Icon(Icons.visibility_off),            
             
            
          ),
        ));
  }
}
