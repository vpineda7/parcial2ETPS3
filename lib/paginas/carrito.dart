import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Carrito extends StatefulWidget {

  @override
  State<Carrito> createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            
      // appBar: AppBar(        
      //   toolbarHeight: 60,
      //   title: mostrarAppBar(),
      // ),
      body: infoCarritos(),
      
    );
 
  }
    Widget infoCarritos() {
    var tamanio = MediaQuery.of(context).size;
    return Column(      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            
            children: [
              Column(
                children: [
                    SizedBox(height: 95,),
                    Row(                  
                          children: [
                            SizedBox(width: 24,),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/img_1.png'),
                                      fit: BoxFit.scaleDown),
                                  color: Color.fromRGBO(239, 241, 231, 1),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [                          
                              Text(
                                "Wooden Chair",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black
                                    ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                alignment: Alignment.bottomLeft,
                                width: 180,
                                child: Text(
                                  "\$ 24.99",
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                              )  
                            ],),
                            SizedBox(width: 10,),
                            Icon(FeatherIcons.xCircle, color: Colors.black),                        
                          ],
                    ),
                    SizedBox(height: 20,),
                    Row(                  
                          children: [
                            SizedBox(width: 24,),
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/img_1.png'),
                                      fit: BoxFit.scaleDown),
                                  color: Color.fromRGBO(239, 241, 231, 1),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [                          
                              Text(
                                "Wooden Chair",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.black
                                    ),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                alignment: Alignment.bottomLeft,
                                width: 180,
                                child: Text(
                                  "\$ 24.99",
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                              )  
                            ],),
                            SizedBox(width: 10,),
                            Icon(FeatherIcons.xCircle, color: Colors.black),                        
                          ],
                    ),     
                ],
                
              ),
            
              SafeArea(
                bottom: false,
                child: Row(              

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [                
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text("Cart",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,                    
                        ),
                      
                    ),    
                    IconButton(
                        icon: Icon(                      
                          null,
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
        ),  
            SizedBox(),  
            // Container(
            //   alignment: Alignment.bottomCenter,
            //   padding: EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: <Widget>[
            //       Icon(Icons.account_balance_wallet),
            //       Icon(Icons.adb),
            //       Icon(Icons.account_box),
            //       Icon(Icons.ac_unit),
            //     ],
            //   ),
            // ),  
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                      )
                    ),
                    Text("\$50.00",style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                      ))
                  ],
                ),
              ),
              SizedBox(height: 15 ,),
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
                      horizontal: 130.0,
                      vertical: 18.0,
                    ),
                  ), 
                ),                
                child: Text("Pagar", style:TextStyle(fontSize: 20),),                
                onPressed: () {
                },
              ),
              SizedBox(height: 25,)
            ],)
    ],
    );
  } 
}