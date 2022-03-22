import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


class PrincipalApp extends StatefulWidget {
  @override
  State<PrincipalApp> createState() => _PrincipalAppState();
}

class _PrincipalAppState extends State<PrincipalApp> {
  int _paginaActual = 0;
  int activeTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            
      body: getPaginas(),
    );
  }

  Widget getPaginas() {
    return IndexedStack(
      index: activeTab,

      children: [
        PaginaPrincipal(),        
      ],
    );
  }

  
}
