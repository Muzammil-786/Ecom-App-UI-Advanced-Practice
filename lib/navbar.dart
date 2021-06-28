import 'package:flutter/material.dart';
import 'package:muzammil_assignment/cart.dart';
import 'package:muzammil_assignment/favourite.dart';
import 'package:muzammil_assignment/home.dart';
import 'package:muzammil_assignment/user.dart';

class NavigationBar extends StatefulWidget {

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  int currentTab = 0;
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen,),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple,
        child: Icon(Icons.search, size: 35, color: Colors.white, ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,

        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                minWidth: 50,
                onPressed: (){
                  setState(() {
                    currentScreen = Home();
                    currentTab = 0;
                  });
                },
                child: Icon(Icons.home, size: 30,
                color: currentTab == 0 ? Colors.purple : Colors.grey[400],),
              ),

              MaterialButton(
                minWidth: 80,
                onPressed: (){
                  setState(() {
                    currentScreen = Favourite();
                    currentTab = 1;
                  });
                },
                child: Icon(Icons.favorite, size: 30,
                color: currentTab == 1 ? Colors.purple : Colors.grey[400],),
              ),

              MaterialButton(
                minWidth: 80,
                onPressed: (){
                  setState(() {
                    currentScreen = Cart();
                    currentTab = 2;
                  });
                },
                child: Icon(Icons.shopping_cart, size: 30,
                color: currentTab == 2 ? Colors.purple : Colors.grey[400],),
              ),

              MaterialButton(
                minWidth: 50,
                onPressed: (){
                  setState(() {
                    currentScreen = User();
                    currentTab = 3;
                  });
                },
                child: Icon(Icons.person_rounded, size: 30,
                color: currentTab == 3 ? Colors.purple : Colors.grey[400],),
              ),
            ],
          ),
        ),
      ),
    );
  }
}