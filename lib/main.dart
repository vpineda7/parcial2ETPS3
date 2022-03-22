import 'package:flutter/material.dart';
import 'package:spotifyclone/paginas/principal_app.dart';

void main() {
  runApp(SivarApp());
}

class SivarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      debugShowCheckedModeBanner: false,      
      theme: ThemeData(        
        primarySwatch: Colors.blueGrey,
        //backgroundColor: Color.fromRGBO(255, 255, 255, 1)
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PrincipalApp(),
    );
  }
}
