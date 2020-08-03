import 'package:cms/screen/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CMS());
}

class CMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Client Management System",
      theme: ThemeData(primaryColor: Colors.purple[400],),
      home: CMSApp(),
    );  
  }
}

class CMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LoginScreen()),
       
    
    );
  }
}
