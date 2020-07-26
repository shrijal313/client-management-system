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
      home: CMSApp(),
    );
  }
}

class CMSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen(),
       
    
    );
  }
}
