import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

import '../constantes/const.dart';
import 'package:spotifyclone/paginas/details.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int activoMenu1 = 0;
  int activoMenu2 = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyAppSpf(),      
    );
  }



  Widget bodyAppSpf() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 25, bottom: 18, top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FeatherIcons.alignJustify, color: Colors.black),
                Icon(FeatherIcons.shoppingBag, color: Colors.black),            
              ],
            ),
          ),
          //label tienda 
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 15),
            child: Text("Comercial SIVAR", style:TextStyle(
              fontSize: 23
            ),
            ),
          ),
          //search box
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 25),
            
            child: TextField(
                
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true, 
                fillColor: Color.fromRGBO(239, 241, 231, 1),
                prefixIconColor:Color.fromRGBO(239, 241, 231, 1) ,  
                hintText: 'Buscar',
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                //crossAxisAlignment: CrossAxisAlignment.start,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(furniture_category.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activoMenu1 = index;
                            
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              furniture_category[index],
                              style: TextStyle(
                                  //color: Colors.grey,
                                  fontSize: 15,
                                  color:Color.fromRGBO(12, 12, 12, 1),
                                  // color: activoMenu1 == index
                                  //     ? Colors.gray 
                                  //     : Colors.green,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activoMenu1 == index
                                ? Container(                                    
                                    width: furniture_category[index].length.toDouble()*8,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(12, 12, 12, 1),
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(furnitures.length - 5, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: FurnitureDetails(
                                furniture: furnitures[index],
                              ),
                              type: PageTransitionType.scale));
                      /*AlbumPagina;*/
                      //Navigator.push(context, MaterialPageRoute(context)=>AlbumPagina());
                      // Navigator.push(context, PageTransition(child:))
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(furnitures[index]['img']),
                                  fit: BoxFit.scaleDown),
                              color: Color.fromRGBO(239, 241, 231, 1),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          furnitures[index]['name'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black
                              ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            furnitures[index]['price'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          

//segundo bloque

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(furnitures.length - 5, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.topCenter,
                              child: FurnitureDetails(
                                furniture: furnitures[index + 5],
                              ),
                              type: PageTransitionType.fade));
                    },
                    child: Column(
                      children: [

                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(furnitures[index + 5]['img']),
                                  fit: BoxFit.scaleDown),
                              color: Color.fromRGBO(239, 241, 231, 1),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          furnitures[index + 5]['name'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            furnitures[index + 5]['price'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontWeight: FontWeight.w900),
                          ),
                          
                        ),
                        SizedBox(
                          height: 25,
                        ),

                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
        ],
      ),
    );
  }
}
