import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailFieldContainer extends StatelessWidget {

  const EmailFieldContainer({
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
          
          cursorColor: Colors.white, 
          keyboardType: TextInputType.emailAddress,
          style: GoogleFonts.poppins(
            textStyle:  TextStyle(color: Colors.white,
         ),
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.person, color: Colors.white, size: 25),
            
             
            
          ),
        ));
  }
}
