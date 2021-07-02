import 'package:center_source_machinetest/screens/bottom_bar.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final assetPath, furnitureprice, furniturename;

  ProductDetail({this.assetPath, this.furnitureprice, this.furniturename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(Icons.camera_alt_outlined, color: Colors.black, size: 25.0),
              SizedBox(
                width: 10,
              ),
              Text('Point your camera at a furniture',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
        SizedBox(height: 50.0),
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.black12),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child:MaterialButton(
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Colors.black,
                            child: Icon(
                              Icons.close,
                              size: 18,
                            ),
                            padding: EdgeInsets.all(18),
                            shape: CircleBorder(),
                          )
                      ),

                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15.0,),
                            Text(
                              furniturename,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(height: 10.0),


                          ],
                        ),
                      ),


                    ],
                  ),
                ))),

        Image.asset(assetPath,
            height: 350.0, width: 100.0, fit: BoxFit.cover),
        SizedBox(height: 50.0),


        Center(
            child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
             height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.black12),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.asset(assetPath,
                            height: 100.0, width: 100.0, fit: BoxFit.cover),
                      ),

                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20.0,),
                        Text(
                          furniturename,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(

                              children: [
                                Icon(Icons.star,
                                    color: Color(0xFFE0BC1D), size: 15.0),
                                Text('4.3',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0))
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Row(
                              children: [
                                Icon(Icons.attach_money_rounded,
                                    color: Color(0xFFE0BC1D), size: 15.0),
                                Text('230.00',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0))
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                      Expanded(
                        flex: 3,
                        child:MaterialButton(
                          onPressed: () {},
                          color: Colors.white,
                          textColor: Colors.black,
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                          ),
                          padding: EdgeInsets.all(16),
                          shape: CircleBorder(),
                        )
                      ),

                    ],
                  ),
                )))
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
