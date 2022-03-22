import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotifyclone/paginas/carrito.dart';
import 'package:spotifyclone/paginas/home.dart';
import '../constantes/const.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';


class FurnitureDetails extends StatefulWidget {
  final dynamic furniture;

  const FurnitureDetails({Key? key, this.furniture}) : super(key: key);

  @override
  State<FurnitureDetails> createState() => _FurnitureDetailsState();
}

class _FurnitureDetailsState extends State<FurnitureDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 241, 231, 1),
      body: details(),
    );
  }

  Widget details() {
    var tamanio = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container( 
                width: tamanio.width,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: AssetImage(widget.furniture['img']),
                        fit: BoxFit.scaleDown)),
              ),
              SizedBox(
                height: 9,
              ),              
              Container(
                height: 280,
                width: tamanio.width,
                decoration: BoxDecoration(
                    // image: DecorationImage(
                    //     image: AssetImage(furnitures[index + 5]['img']),
                    //     fit: BoxFit.scaleDown),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.only(right:20, left:20 ),
                      child: Column(
                        children: [
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               Text(
                                  widget.furniture['name'],
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),Text(
                                  widget.furniture['price'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                             ],
                            
                          ),
                          SizedBox(height:10),
                          Text(
                            widget.furniture['description'],
                            style: TextStyle(
                                fontSize: 12,
                                height: 2,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton(
                            
                            style: ButtonStyle(
                              
                              backgroundColor: MaterialStateProperty.all<Color>(
                                                Color.fromRGBO(172, 147, 93, 1),
                                                ),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                  horizontal: 125.0,
                                  vertical: 20.0,
                                ),
                              ), 
                            ),
                            
                            child: Text("Comprar", style:TextStyle(fontSize: 17),),
                            
                            onPressed: () {
                              Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.topCenter,
                                child: Carrito(),
                                type: PageTransitionType.fade)
                              ); 
                            },
                          )
                          
                        ]),
                    ),
              ),
            ],
          ),
        
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                IconButton(
                    icon: Icon(                      
                      FeatherIcons.shoppingBag,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            ),
          )
        ],
      ),
    //safearea
    );
  }
}
