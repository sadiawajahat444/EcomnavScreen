import 'package:ecomnav/dashboard.dart';
import 'package:ecomnav/favourite.dart';
import 'package:ecomnav/shopping.dart';
import 'package:ecomnav/user.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
    @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
 List<dynamic> lst = [1, 2, 3, 4, 5, 6, 7, 8];
 // final List screens = [
 //   Dashboard(),
 //   Favourite(),
 //   Shopping(),
  //  User()
  // ];
   // final PageStorageBucket bucket = PageStorageBucket(),
    Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
           


      body: 
      PageStorage(child: currentScreen,
        bucket: PageStorageBucket()),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(Icons.search, color: Colors.purple, 
          // color: currentTab == 0 ? Colors.purple : Colors.grey
          ),
          onPressed: () {}),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        
          bottomNavigationBar: BottomAppBar(
             color: Colors.white,
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Left tab Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    
                    MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Dashboard();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home,
                              color: currentTab == 0 ? Colors.purple : Colors.grey),
                              Text(
                                "Home",
                                style: TextStyle(
                                  color: currentTab == 0 ? Colors.purple : Colors.grey),)
                           ], )),
                    
              MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Favourite();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite,
                              color: currentTab == 1 ? Colors.purple : Colors.grey),
                              Text(
                                "Favourite",
                                style: TextStyle(
                                  color: currentTab == 1 ? Colors.purple : Colors.grey),)
                           ], )),  
                  ]),   
       //Right tab bar            

                   Row(
                   mainAxisAlignment: MainAxisAlignment.start,
              children: [
                    MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = Shopping();
                              currentTab = 3;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_shopping_cart,
                                color: currentTab == 3 ? Colors.purple : Colors.grey),
                                Text(
                                  "Shopping",
                                  style: TextStyle(
                                    color: currentTab == 3 ? Colors.purple : Colors.grey),)
                             ], )),

                  MaterialButton(
                          minWidth: 40,
                          onPressed: () {
                            setState(() {
                              currentScreen = User();
                              currentTab = 4;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person,
                                color: currentTab == 4 ? Colors.purple : Colors.grey),
                                Text(
                                  "User",
                                  style: TextStyle(
                                    color: currentTab == 4 ? Colors.purple : Colors.grey),)
                             ], )),            
    ]
 ),


              ],
              
               
                ),
                ),
                ),

      // scrolable page
     



    );
  }
}