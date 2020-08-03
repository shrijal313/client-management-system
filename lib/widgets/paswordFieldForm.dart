import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordFieldContainer extends StatefulWidget {
  const PasswordFieldContainer({
    Key key,
  }) : super(key: key);

  @override
  _PasswordFieldContainerState createState() => _PasswordFieldContainerState();
}

class _PasswordFieldContainerState extends State<PasswordFieldContainer> {
  bool isHidden = true;
  void toggleEye() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .85,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).primaryColor,
        ),
        child: TextField(
          obscureText: isHidden,
          cursorColor: Colors.white,
          keyboardType: TextInputType.visiblePassword,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              focusColor: Colors.white,
              prefixIcon:
                  Icon(Icons.lock_outline, color: Colors.white, size: 25),
              suffixIcon: IconButton(
                icon: isHidden
                    ? Icon(Icons.visibility_off, color: Colors.white70)
                    : Icon(Icons.visibility, color: Colors.white),
                onPressed: toggleEye,
              )),
        ));
  }
}
