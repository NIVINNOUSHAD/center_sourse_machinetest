import 'package:center_source_machinetest/screens/bottom_bar.dart';
import 'package:center_source_machinetest/screens/product_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 50, right: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Top Rated',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold)),
              Icon(
                Icons.filter_list_outlined,
                color: Colors.black,
              )
            ],
          ),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 15.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.chair,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Armchair',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                            )),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.bed,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Bed',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.0,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.light,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Lamp',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.0,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                ProductPage(),
                ProductPage(),
                ProductPage(),
              ]))
        ],
      ),
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
