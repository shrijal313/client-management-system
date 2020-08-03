
import 'package:flutter/material.dart';

class FlatButtonContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget child;

  const FlatButtonContainer({
    Key key, this.width, this.height, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.purple,
      width: width,
      height: height,
      child: FlatButton(onPressed: (){
        print("clicked");
      }, 
      child: child,
      color: Theme.of(context).primaryColor,
     hoverColor: Colors.red,
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30,))
      ),
     
    );
  }
}
