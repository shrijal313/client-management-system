import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Welcome to CMS", style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.purple[300],
                letterSpacing: 1,
              )

            )),
          ),
            Center(
              child: Container(
              //  color: Colors.red,
                 width: MediaQuery.of(context).size.width * .8,
                 height:  MediaQuery.of(context).size.height * .4,
                child: Image(image: AssetImage("asset/images/front.png"),)
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              color: Color(0xffb780d9)),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(fillColor: Colors.red,
                
               

                ))
                
              ),
            


          ],
        ),


      ],),
    );
  }
}