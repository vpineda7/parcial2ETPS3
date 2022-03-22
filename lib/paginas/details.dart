import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:spotifyclone/paginas/carrito.dart';
import 'package:spotifyclone/paginas/home.dart';
import '../constantes/const.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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
                          SizedBox(height:8),
                          Row(children: [
                          
                            RatingBar.builder(
                              wrapAlignment: WrapAlignment.start,
                              itemSize: 16,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);

                              },
                            ),
                            Text(
                              "200 Reviews", 
                              style: TextStyle(
                                fontSize: 9
                              ),
                            )  
                          ],),
                          SizedBox(height:8),
                          Text(
                            widget.furniture['description'],
                            style: TextStyle(
                                fontSize: 12,
                                height: 1.5,
                                color: Colors.black,
                                ),
                          ),
                          SizedBox(height: 20,),
                          ElevatedButton.icon(
                          icon: Icon(
                            FeatherIcons.shoppingBag,
                            color: Colors.white,// Color.fromRGBO(172, 147, 93, 1),
                            size: 17.0,
                          ),
                          label: Text('Comprar', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          onPressed: () {
                              Navigator.push(
                              context,
                              PageTransition(
                                alignment: Alignment.topCenter,
                                child: Carrito(),
                                type: PageTransitionType.fade)
                              ); 
                          },
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
                                horizontal: 120.0,
                                vertical: 20.0,
                              ),
                            ), 
                          ),
                        
                          ),                          
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
