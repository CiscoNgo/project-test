import 'package:ct484_project/widgets/CategoriesWidget.dart';
import 'package:ct484_project/widgets/HomeAppBar.dart';
import 'package:ct484_project/widgets/ItemsWidget.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xffedecf2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
            children: [
              // Search Widget
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here..."),
                      ),
                    ),
                    Icon(
                      Icons.camera_alt,
                      size: 27,
                      color: Color(0xff4c53a5),
                    ),
                  ],
                ),
              ),

              // Categories
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4c53a5)),
                ),
              ),

              // Categories Widget
              CategoriesWidget(),

              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4c53a5),
                  ),
                ),
              ),

              // ItemsWidget
              ItemsWidget(),
            ],
          ),
        ),
      ]),
      // Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (index) {},
          height: 70,
          color: Color(0xff4c53a5),
          items: [
            CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              // label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                CupertinoIcons.cart_fill,
                size: 30,
                color: Colors.white,
              ),
              // label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.list,
                size: 30,
                color: Colors.white,
              ),
              // label: 'Home',
            ),
          ]),
      // ),
    );
  }
}
