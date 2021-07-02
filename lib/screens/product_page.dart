import 'package:center_source_machinetest/screens/product_detail.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[

          Container(
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Text('147 products',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0)),
                Row(
                  children: [
                    Text('Most popular',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0)),
                    Icon(Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 25.0),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          Container(
//              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Totor chair', 'assets/chair1.png', false, false,
                      context),
                  _buildCard(
                      'Morbi chair', 'assets/chair2.png', true, false, context),
                  _buildCard('Pretium Chair', 'assets/chair1.png', false, true,
                      context),
                  _buildCard('Blandit chair', 'assets/chair2.png', false, false,
                      context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(
      String name, String imgPath, bool added, bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ProductDetail(assetPath: imgPath, furniturename: name)));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Color(0xFFFAFAFA)),
                child: Column(children: [
                  SizedBox(height: 10.0),
                  Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath),
                              fit: BoxFit.contain))),
                  SizedBox(height: 7.0),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money_rounded,
                                          color: Color(0xFFE0BC1D),
                                          size: 15.0),
                                      Text('230.00',
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
                                      Icon(Icons.star,
                                          color: Color(0xFFE0BC1D),
                                          size: 15.0),
                                      Text('4.3',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0))
                                    ],
                                  ),
                                ],
                              ),
                            ],
                            if (added) ...[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.attach_money_rounded,
                                          color: Color(0xFFE0BC1D),
                                          size: 15.0),
                                      Text('230.00',
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
                                      Icon(Icons.star,
                                          color: Color(0xFFE0BC1D),
                                          size: 15.0),
                                      Text('4.3',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.0))
                                    ],
                                  ),
                                ],
                              ),
                            ]
                          ]))
                ]))));
  }
}
